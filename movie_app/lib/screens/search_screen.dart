import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/movie_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Movie> _searchResults = [];
  bool _isLoading = false;

  Future<void> _searchMovie(String query) async {
    if (query.isEmpty) return;

    setState(() => _isLoading = true);
    try {
      final results = await ApiService().searchMovies(query);
      setState(() {
        _searchResults = results;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Search failed')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Movies')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Search for a movie',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => _searchMovie(_controller.text),
                ),
              ),
            ),
            SizedBox(height: 20),
            _isLoading
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ListView.builder(
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        final movie = _searchResults[index];
                        return ListTile(
                          leading: movie.posterPath != null
                              ? Image.network(
                                  'https://image.tmdb.org/t/p/w92${movie.posterPath}',
                                )
                              : Icon(Icons.movie),
                          title: Text(movie.title ?? 'No title'),
                          subtitle: Text(
                            movie.releaseDate ?? 'No release date',
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
