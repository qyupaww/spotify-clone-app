import 'package:flutter/material.dart';

void main() {
  runApp(const SpotifyCloneApp());
}

class SpotifyCloneApp extends StatelessWidget {
  const SpotifyCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotify Clone App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const SongPlaylistScreen(),
    );
  }
}

class SongPlaylistScreen extends StatelessWidget {
  const SongPlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF191414),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            "My Playlist",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header UI
              Center(
                child: Image.asset(
                  "assets/images/cover.png",
                  width: 250,
                  height: 250,
                ),
              ),
              SizedBox(height: 16),
              const Text(
                "My Lagu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "inilah dia my favorit song lagu, kuumpulan my lagu yang sering my dengar xixixi",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              const Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(
                      "assets/images/cover.png",
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Faisal Lawrence",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
