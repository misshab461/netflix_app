import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/constants.dart';

class IntroducingDownloadsText extends StatelessWidget {
  const IntroducingDownloadsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Introducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        KHeight,
        KHeight,
        Text(
          "We'll download a personalized selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 195, 195, 195),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
