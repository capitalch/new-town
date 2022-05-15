import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class Device {
  static String get type {
    if (Platform.isAndroid)
      return "android";
    else if (Platform.isIOS)
      return "ios";
    else if (Platform.isLinux)
      return "linux";
    else if (Platform.isMacOS)
      return "macos";
    else if (Platform.isWindows)
      return "windows";
    else
      return "unknown";
  }

  static Future<String> get id async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor ?? '';
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId ?? '';
    }
  }
}
