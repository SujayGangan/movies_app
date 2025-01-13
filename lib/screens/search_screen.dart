import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../widgets/movie_item.dart';
import 'details_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List searchResults = [];
  String query = '';

  void searchMovies(String searchTerm) async {
    final data = await ApiService.searchMovies(searchTerm);
    setState(() {
      searchResults = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: 'Search...'),
          onChanged: (value) {
            setState(() {
              query = value;
            });
            searchMovies(value);
          },
        ),
      ),
      body: searchResults.isEmpty
          ? Center(child: Text('No results found'))
          : ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          final movie = searchResults[index]['show'];
          return MovieItem(
            movie: movie,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(movie: movie),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
