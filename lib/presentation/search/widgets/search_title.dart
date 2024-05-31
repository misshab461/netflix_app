import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';

class SearchTextTitle extends StatelessWidget {
  final String title;
  const SearchTextTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: KWhiteColor,
      ),
    );
  }
}
