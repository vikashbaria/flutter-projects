// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../services/api_service.dart';
import '../widgets/movie_card.dart';

class HomeScreen extends StatelessWidget {
  final ApiService api = ApiService();

  HomeScreen({super.key});

  Widget _buildSection(String title, Future<List<Movie>> futureMovies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 230,
          child: FutureBuilder<List<Movie>>(
            future: futureMovies,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) return Center(child: Text('Error'));

              final movies = snapshot.data!;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) =>
                    MovieCard(movie: movies[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('🎬 Movie Explorer'), centerTitle: true),
      body: ListView(
        children: [
          _buildSection('🔥 Popular', api.fetchPopularMovies()),
          _buildSection('⭐ Top Rated', api.fetchTopRatedMovies()),
          _buildSection('🎬 Upcoming', api.fetchUpcomingMovies()),
        ],
      ),
    );
  }
}
