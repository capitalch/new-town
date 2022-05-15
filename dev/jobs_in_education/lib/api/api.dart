import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';

import 'server_response.dart';

abstract class Api {
  static final baseUrl =
      'https://employers.development.jobsineducation.net/app';

  static String _deviceId = '';

  static setDeviceId(String id) => _deviceId = id;

  Future<ServerResponse> get(
    String endpoint, {
    Map<String, dynamic>? headers,
  });

  Future<ServerResponse> post(
    String endpoint, {
    Map<String, dynamic> body = const {},
    Map<String, dynamic>? headers,
  });

  Future<ServerResponse> put(
    String endpoint, {
    Map<String, dynamic> body = const {},
    Map<String, dynamic>? headers,
  });

  Future<ServerResponse> delete(
    String endpoint, {
    Map<String, dynamic> body = const {},
    Map<String, dynamic>? headers,
  });

  Future<ServerResponse> uploadFile(
    String endpoint,
    File file,
    String contentType, {
    Map<String, dynamic>? headers,
  });

  Map<String, dynamic> get deviceIdMap => {'deviceid': _deviceId};
}

class DioApi extends Api {
  final Dio _dio;

  DioApi()
      : _dio = Dio(BaseOptions(
          baseUrl: Api.baseUrl,
          connectTimeout: 30 * 1000,
          receiveTimeout: 30 * 1000,
          sendTimeout: 30 * 1000,
        )) {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      log('=====> Endpoint: ${options.path} <=====');
      log('RequestHeaders: ${options.headers}');
      log('RequestBody: ${options.data}');
      return handler.next(options);
    }, onResponse: (response, handler) {
      log('ResponseBody: ${response.data}');
      return handler.next(response);
    }, onError: (DioError e, handler) {
      log('ApiError: $e');
      return handler.next(e);
    }));
  }

  ServerResponse _onDioError(DioError e) {
    if (e.message.contains('SocketException')) {
      print('----Socket Exception Occurred-----');
      return ServerResponse.error(
          errorMsg:
              'Network Error!\nCheck your internet connection and try again');
    }
    if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.receiveTimeout ||
        e.type == DioErrorType.sendTimeout) {
      print('----Timeout Exception Occurred-----');
      return ServerResponse.error(
          errorMsg: 'Server not responding. Please try later.');
    }

    if (e.response != null) {
      if (e.response!.data is Map<String, dynamic>) {
        return ServerResponse.failure(error: e.response!.data);
      } else {
        return ServerResponse.error(
            errorCode: e.response!.statusCode.toString(),
            errorMsg: e.response!.statusMessage);
      }
    }
    return ServerResponse.error(errorMsg: e.message);
  }

  @override
  Future<ServerResponse> get(String endpoint,
      {Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.get(endpoint,
          options: Options(
            headers: {
              if (headers != null) ...headers,
              ...deviceIdMap,
            },
          ));

      return _onResponse(response);
    } on DioError catch (e) {
      return _onDioError(e);
    } catch (e) {
      return ServerResponse.error(errorMsg: e.toString());
    }
  }

  @override
  Future<ServerResponse> post(String endpoint,
      {Map<String, dynamic> body = const {},
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(endpoint,
          data: body,
          options: Options(
            headers: {
              if (headers != null) ...headers,
              ...deviceIdMap,
            },
          ));

      return _onResponse(response);
    } on DioError catch (e) {
      return _onDioError(e);
    } catch (e) {
      return ServerResponse.error(errorMsg: e.toString());
    }
  }

  @override
  Future<ServerResponse> put(String endpoint,
      {Map<String, dynamic> body = const {},
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.put(endpoint,
          data: body,
          options: Options(
            headers: {
              if (headers != null) ...headers,
              ...deviceIdMap,
            },
          ));

      return _onResponse(response);
    } on DioError catch (e) {
      return _onDioError(e);
    } catch (e) {
      return ServerResponse.error(errorMsg: e.toString());
    }
  }

  @override
  Future<ServerResponse> delete(String endpoint,
      {Map<String, dynamic> body = const {},
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.delete(endpoint,
          data: body,
          options: Options(
            headers: {
              if (headers != null) ...headers,
              ...deviceIdMap,
            },
          ));

      return _onResponse(response);
    } on DioError catch (e) {
      return _onDioError(e);
    } catch (e) {
      return ServerResponse.error(errorMsg: e.toString());
    }
  }

  @override
  Future<ServerResponse> uploadFile(
      String endpoint, File file, String contentType,
      {Map<String, dynamic>? headers}) async {
    Uint8List data = File(file.path).readAsBytesSync();

    try {
      // final response = await _dio.put(
      //   endpoint,
      //   data: Stream.fromIterable(data.map((e) => [e])),
      //   options: Options(
      //     headers: {
      //       Headers.contentLengthHeader: data.length,
      //       'content-type': 'application/octet-stream',
      //     },
      //   ),
      // );
      print('ContentType: $contentType');
      await _dio.put(
        endpoint,
        data: file.openRead(),
        options: Options(
          contentType: contentType,
          headers: {
            "Content-Length": file.lengthSync(),
          },
        ),
        onSendProgress: (int sentBytes, int totalBytes) {
          double progressPercent = sentBytes / totalBytes * 100;
          print("$progressPercent %");
        },
      );

      return ServerResponse.success(data: {});
    } on DioError catch (e) {
      return _onDioError(e);
    } catch (e) {
      return ServerResponse.error(errorMsg: e.toString());
    }
  }

  ServerResponse _onResponse(Response<dynamic> response) {
    if (response.data is Map<String, dynamic> && response.data['success']) {
      return ServerResponse.success(data: response.data);
    }
    if (response.data is Map<String, dynamic> && !response.data['success']) {
      return ServerResponse.failure(error: response.data);
    }
    return ServerResponse.error(
        errorCode: response.statusCode.toString(),
        errorMsg: response.statusMessage);
  }
}
