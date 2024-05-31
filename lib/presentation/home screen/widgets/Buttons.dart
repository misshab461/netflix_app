import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';

class AddInfoButtons extends StatelessWidget {
  final String title;
  final IconData icon;
  AddInfoButtons({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: KWhiteColor,
          size: 35,
          shadows: const [
            Shadow(
              blurRadius: 40,
              offset: Offset(0, 1),
              color: Colors.black,
            ),
          ],
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 40,
                offset: Offset(0, 3),
                color: kblackColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class PlayButtonWidget extends StatelessWidget {
  PlayButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow_rounded,
        size: 35,
        color: kblackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Text(
          'Play',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: kblackColor),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(KWhiteColor),
      ),
    );
  }
}
