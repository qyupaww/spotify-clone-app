import 'package:flutter/material.dart';
import 'package:spotify_clone_app/content.dart';

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
        body: SingleChildScrollView(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const ContentWidgets()],
          ),
        ),
      ),
    );
  }
}
