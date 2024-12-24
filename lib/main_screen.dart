import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'model/artwork.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pameran Seni'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.grey[50], // Latar belakang yang lebih lembut
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return constraints.maxWidth <= 600
                ? const ArtworkList()
                : const ArtworkGrid(gridCount: 5); // Menampilkan 5 kolom
          },
        ),
      ),
    );
  }
}

class ArtworkGrid extends StatelessWidget {
  final int gridCount;

  const ArtworkGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Padding yang lebih rapi
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          childAspectRatio: 0.8, // Rasio 4:5
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: artworkList.length,
        itemBuilder: (context, index) {
          final artwork = artworkList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(artwork: artwork);
              }));
            },
            child: Card(
              elevation: 4, // Elevasi untuk tampilan yang lebih sederhana
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Sudut melengkung
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Menyelaraskan ke tengah
                children: [
                  Hero(
                    tag: artwork.title,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          15), // Sudut melengkung pada gambar
                      child: Image.asset(
                        artwork.imageAsset,
                        fit: BoxFit.cover,
                        height: 200, // Tinggi gambar yang konsisten
                        width: double.infinity, // Lebar gambar penuh
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          artwork.title,
                          style: const TextStyle(
                            fontSize: 16.0, // Ukuran font untuk judul karya
                            color: Colors.teal, // Warna judul karya
                          ),
                          textAlign:
                              TextAlign.center, // Menyelaraskan teks ke tengah
                        ),
                        const SizedBox(height: 4),
                        Text(
                          artwork.artist,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                          textAlign:
                              TextAlign.center, // Menyelaraskan teks ke tengah
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ArtworkList extends StatelessWidget {
  const ArtworkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: artworkList.length,
        itemBuilder: (context, index) {
          final artwork = artworkList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(artwork: artwork);
              }));
            },
            child: Card(
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          15), // Sudut melengkung pada gambar
                      child: Image.asset(
                        artwork.imageAsset,
                        fit: BoxFit.cover,
                        height: 100, // Tinggi gambar dalam daftar
                        alignment:
                            Alignment.topCenter, // Fokus pada bagian atas
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            artwork.title,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            artwork.artist,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
