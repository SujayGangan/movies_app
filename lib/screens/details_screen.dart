import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map movie;

  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie['name'] ?? 'Details')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(movie['image']['original'] ?? ''),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie['name'] ?? '',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie['summary'] ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}
