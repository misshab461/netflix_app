import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: KWhiteColor,
      ),
    );
  }
}
