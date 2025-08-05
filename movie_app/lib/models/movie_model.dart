// lib/models/movie_model.dart
class Movie {
  final String title;
  final String posterPath;
  final String overview;
  final String releaseDate;
  final double rating;
  final int id;

  Movie({
    required this.title,
    required this.posterPath,
    required this.overview,
    required this.releaseDate,
    required this.rating,
    required this.id,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] ?? 'No Title',
      posterPath: json['poster_path'] ?? '',
      overview: json['overview'] ?? '',
      releaseDate: json['release_date'] ?? '',
      rating: (json['vote_average'] as num).toDouble(),
      id: json['id'],
    );
  }
}
