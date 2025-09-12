import 'package:flutter/material.dart';
import 'package:spotify_clone_app/constants.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Image.asset(
                    "assets/images/${SpotifyPlaylistConstants.songPlaylists[index].coverAsset}",
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        SpotifyPlaylistConstants.songPlaylists[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        SpotifyPlaylistConstants.songPlaylists[index].singer,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 16);
            },
            itemCount: SpotifyPlaylistConstants.songPlaylists.length,
          ),
        ),
      ],
    );
  }
}
