import 'package:flutter/material.dart';
import 'package:spotify_clone_app/constants.dart';

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
              const SizedBox(height: 16),
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
                "inilah dia my favorit kesukaan song lagu, kumpulan my lagu yang sering my dengar xixixi",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(
                      "assets/images/EULA.jpg",
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
              const SizedBox(height: 8),
              // Middle UI
              const Row(
                children: [
                  Icon(Icons.language, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    "82 saves - 6h 9m",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 50,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/wewq.png",
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Icon(
                    Icons.arrow_circle_down,
                    color: Colors.grey,
                    size: 32,
                  ),
                  const SizedBox(width: 24),
                  const Icon(
                    Icons.person_add,
                    color: Colors.grey,
                    size: 32,
                  ),
                  const SizedBox(width: 24),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                    size: 32,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.shuffle,
                    color: Colors.grey,
                    size: 32,
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.play_circle,
                    color: Colors.green,
                    size: 40,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Body UI
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/${SpotifyPlaylistConstants.playlistAsset[0]}",
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisAlignment:
                              MainAxisAlignment.start,
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              SpotifyPlaylistConstants
                                  .playlistSinger[0],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              SpotifyPlaylistConstants
                                  .playlistTitle[0],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
