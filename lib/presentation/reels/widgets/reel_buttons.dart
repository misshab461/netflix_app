import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/constants.dart';

const imageUrl =
    'https://cdn.britannica.com/05/236505-050-17B6E34A/Elon-Musk-2022.jpg';

class ReelButtonsList extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() buttonAction;
  final double size;
  final bool dpShow;
  const ReelButtonsList({
    super.key,
    required this.icon,
    required this.title,
    required this.buttonAction,
    this.size = 35,
    this.dpShow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dpShow == true
            ? CircleAvatar(
                radius: 35,
                backgroundColor: Colors.black.withOpacity(.6),
                backgroundImage: NetworkImage(imageUrl),
              )
            : const SizedBox(),
        KHeight,
        IconButton(
          onPressed: buttonAction,
          icon: Icon(
            icon,
            color: Colors.white,
            size: size,
            shadows: const [
              Shadow(
                offset: Offset(0, 4),
                blurRadius: 20,
              )
            ],
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(0, 5),
                color: Colors.black,
                blurRadius: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
