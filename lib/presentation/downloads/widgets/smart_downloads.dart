import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';

class SmartDOwnloads extends StatelessWidget {
  const SmartDOwnloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        KWidth,
        Icon(
          Icons.settings,
          color: KWhiteColor,
          size: 30,
        ),
        KWidth,
        KWidth,
        Text(
          'Smart Downloads',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
