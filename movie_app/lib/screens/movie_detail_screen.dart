// lib/screens/movie_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../constants.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CachedNetworkImage(
                imageUrl: '$imageUrl${movie.posterPath}',
                height: 300,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Release Date: ${movie.releaseDate}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rating: ⭐ ${movie.rating}/10',
              style: TextStyle(color: Colors.amber),
            ),
            SizedBox(height: 16),
            Text(movie.overview),
          ],
        ),
      ),
    );
  }
}
