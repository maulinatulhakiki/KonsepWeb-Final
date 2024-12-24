import 'package:flutter/material.dart';
import 'model/artwork.dart';

class DetailScreen extends StatelessWidget {
  final Artwork artwork;

  const DetailScreen({Key? key, required this.artwork}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artwork.title),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: artwork.title,
                child: Image.asset(
                  artwork.imageAsset,
                  fit: BoxFit.cover,
                  height: 300, // Adjusted height for better visibility
                ),
              ),
              const SizedBox(height: 16),
              Text(
                artwork.title,
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Artist: ' + artwork.artist,
                style: const TextStyle(
                    fontSize: 18.0, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 16),
              Text(
                artwork.description,
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
