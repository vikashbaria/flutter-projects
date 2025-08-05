// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie_model.dart';
import '../constants.dart';

class ApiService {
  Future<List<Movie>> fetchPopularMovies() async {
    return _fetchMovies('$baseUrl/movie/popular?api_key=$apiKey');
  }

  Future<List<Movie>> fetchTopRatedMovies() async {
    return _fetchMovies('$baseUrl/movie/top_rated?api_key=$apiKey');
  }

  Future<List<Movie>> fetchUpcomingMovies() async {
    return _fetchMovies('$baseUrl/movie/upcoming?api_key=$apiKey');
  }

  Future<List<Movie>> searchMovies(String query) async {
    final url = '$baseUrl/search/movie?query=$query&api_key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List results = jsonDecode(response.body)['results'];
      return results.map((json) => Movie.fromJson(json)).toList();
    } else {
      throw Exception('Failed to search movies');
    }
  }

  Future<List<Movie>> _fetchMovies(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List results = jsonDecode(response.body)['results'];
      return results.map((json) => Movie.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
