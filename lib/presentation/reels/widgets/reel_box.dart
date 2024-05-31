import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/presentation/reels/widgets/reel_buttons.dart';

class ReelsBox extends StatelessWidget {
  final int index;
  ReelsBox({
    super.key,
    required this.index,
  });

  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black.withOpacity(.6),
                  child: IconButton(
                    onPressed: () async {},
                    icon: const Icon(
                      CupertinoIcons.volume_down,
                      size: 35,
                      color: KWhiteColor,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ReelButtonsList(
                      icon: CupertinoIcons.heart,
                      title: 'LOL',
                      buttonAction: () {},
                      dpShow: true,
                    ),
                    ReelButtonsList(
                      icon: CupertinoIcons.add,
                      title: 'My List',
                      buttonAction: () {},
                    ),
                    ReelButtonsList(
                      icon: CupertinoIcons.share_up,
                      title: 'Share',
                      buttonAction: () {},
                      size: 30,
                    ),
                    ReelButtonsList(
                      icon: CupertinoIcons.play,
                      title: 'Play',
                      buttonAction: () {},
                      size: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
