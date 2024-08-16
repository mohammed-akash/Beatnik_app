import 'dart:convert';
import 'package:http/http.dart' as http;

class BeatnikHttpHelper {
  static const String _baseUrl = 'https://api-base-url.com';

  // Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await http.get(Uri.parse("$_baseUrl/$endpoint"));
      return _handleResponse(response);
    } catch (error) {
      return {'error': error.toString()};
    }
  }

  // Helper method to make a POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    try {
      final response = await http.post(
        Uri.parse("$_baseUrl/$endpoint"),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );
      return _handleResponse(response);
    } catch (error) {
      return {'error': error.toString()};
    }
  }

  // Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    try {
      final response = await http.delete(Uri.parse("$_baseUrl/$endpoint"));
      return _handleResponse(response);
    } catch (error) {
      return {'error': error.toString()};
    }
  }

  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    try {
      final response = await http.put(
        Uri.parse("$_baseUrl/$endpoint"),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );
      return _handleResponse(response);
    } catch (error) {
      return {'error': error.toString()};
    }
  }

  // Helper method to make a PATCH request
  static Future<Map<String, dynamic>> patch(String endpoint, dynamic data) async {
    try {
      final response = await http.patch(
        Uri.parse("$_baseUrl/$endpoint"),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );
      return _handleResponse(response);
    } catch (error) {
      return {'error': error.toString()};
    }
  }

  // Private method to handle HTTP responses
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      return {
        'error': 'Request failed with status: ${response.statusCode}',
        'body': json.decode(response.body)
      };
    }
  }
}
