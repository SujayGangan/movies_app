import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://api.tvmaze.com/search/shows';

  static Future<List> fetchMovies() async {
    final response = await http.get(Uri.parse('$baseUrl?q=all'));
    return jsonDecode(response.body);
  }

  static Future<List> searchMovies(String query) async {
    final response = await http.get(Uri.parse('$baseUrl?q=$query'));
    return jsonDecode(response.body);
  }
}
