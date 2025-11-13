import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

/// Basic REST helper built on top of package:http.
class NetworkService extends GetxService {
  final http.Client _client;
  final String baseUrl;

  NetworkService({
    http.Client? client,
    this.baseUrl = 'https://jsonplaceholder.typicode.com',
  }) : _client = client ?? http.Client();

  Future<NetworkService> init() async {
    return this;
  }

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, String>? headers,
  }) async {
    final response = await _client.get(
      Uri.parse('$baseUrl$path'),
      headers: headers,
    );
    _throwIfNeeded(response);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await _client.post(
      Uri.parse('$baseUrl$path'),
      headers: headers ?? {'Content-Type': 'application/json'},
      body: body,
      encoding: encoding,
    );
    _throwIfNeeded(response);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  void _throwIfNeeded(http.Response response) {
    if (response.statusCode >= 400) {
      throw Exception('Network error ${response.statusCode}: ${response.body}');
    }
  }
}
