import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<http.Response> post(
      {@required String url, @required dynamic json}) async {
    final response = await http.post(url, body: json);
    return response;
  }

  static Future<http.Response> get({@required String url}) async {
    final response = await http.get(url);
    return response;
  }
}
