// library ibukiLib;

import 'dart:async';

// import 'globals.dart' as globals;
import "dart:convert";
import 'dart:async' show Future;

StreamController<Map<String, dynamic>> _streamController =
    StreamController.broadcast();

void emit(String id, dynamic options) {
  _streamController.add({"id": id, "data": options});
}

Stream<Map<String, dynamic>> filterOn(String id) {
  return (_streamController.stream.where((d) => d['id'] == id));
}

Future<Map<String, dynamic>> filterOnFuture(String id) {
  return _streamController.stream.where((d) => d['id'] == id).first;
}

// void httpPost (String id, {dynamic args}) async {
//   dynamic d  = await globals.httpPost(id, args: args);
//   List<dynamic> resultSet = json.decode((d.body)).toList();
//   _streamController.add({'id': id, 'data': resultSet});
// }

void close() {
  _streamController.close();
}
