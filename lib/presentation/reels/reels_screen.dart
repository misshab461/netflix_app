import 'package:flutter/material.dart';
import 'package:project_tutorial2/presentation/reels/widgets/reel_box.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              21,
              (index) => ReelsBox(index: index),
            ),
          ),
        ),
      ),
    );
  }
}
