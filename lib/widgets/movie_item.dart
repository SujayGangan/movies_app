import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final Map movie;
  final VoidCallback onTap;

  MovieItem({required this.movie, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(movie['image']?['medium'] ?? ''),
      title: Text(movie['name'] ?? ''),
      subtitle: Text(movie['summary'] ?? '', maxLines: 2, overflow: TextOverflow.ellipsis),
      onTap: onTap,
    );
  }
}
