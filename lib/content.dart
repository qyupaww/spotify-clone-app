import 'package:flutter/material.dart';
import 'package:spotify_clone_app/body.dart';
import 'package:spotify_clone_app/middle.dart';

class ContentWidgets extends StatelessWidget {
  const ContentWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage("assets/images/EULA.jpg"),
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
        const MiddleWidget(),
        SizedBox(height: 16),
        // Body UI
        const BodyWidget(),
      ],
    );
  }
}
