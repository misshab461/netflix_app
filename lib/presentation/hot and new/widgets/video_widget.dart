import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';

class VideoWidget extends StatelessWidget {
  final String imageUrl;
  const VideoWidget({
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 5,
          bottom: 5,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black.withOpacity(.6),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.volume_down,
                size: 35,
                color: KWhiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
