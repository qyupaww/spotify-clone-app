import 'package:flutter/material.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Icon(Icons.language, color: Colors.grey),
            SizedBox(width: 4),
            Text("82 saves - 6h 9m", style: TextStyle(color: Colors.grey)),
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
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/wewq.png"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(width: 24),
            const Icon(Icons.arrow_circle_down, color: Colors.grey, size: 32),
            const SizedBox(width: 24),
            const Icon(Icons.person_add, color: Colors.grey, size: 32),
            const SizedBox(width: 24),
            const Icon(Icons.more_horiz, color: Colors.grey, size: 32),
            const Spacer(),
            const Icon(Icons.shuffle, color: Colors.grey, size: 32),
            const SizedBox(width: 12),
            const Icon(Icons.play_circle, color: Colors.green, size: 40),
          ],
        ),
      ],
    );
  }
}
