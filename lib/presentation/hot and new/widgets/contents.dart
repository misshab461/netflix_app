import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/presentation/hot%20and%20new/widgets/video_widget.dart';
import 'package:project_tutorial2/presentation/reels/widgets/reel_buttons.dart';

class PopularTvShowsContent extends StatelessWidget {
  final String name;
  final String day;
  final String month;
  final String imageUrl;
  final String overView;
  final String release;

  const PopularTvShowsContent({
    super.key,
    required this.name,
    required this.day,
    required this.month,
    required this.imageUrl,
    required this.overView,
    required this.release,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            children: [
              Text(
                month,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kGreyColor,
                ),
              ),
              Text(
                day,
                style: const TextStyle(
                  fontSize: 30,
                  letterSpacing: 6,
                  fontWeight: FontWeight.bold,
                  color: KWhiteColor,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 470,
          width: size.width - 70,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: size.width - 50,
                    child: Image.network(
                      '$imageAppend$imageUrl',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off_sharp,
                        color: Colors.white,
                        size: 30,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 4),
                            blurRadius: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              KHeight,
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  const Spacer(),
                  ReelButtonsList(
                    icon: CupertinoIcons.bell,
                    title: 'Remind Me',
                    buttonAction: () {},
                  ),
                  ReelButtonsList(
                    icon: CupertinoIcons.info,
                    title: 'Info',
                    buttonAction: () {},
                  ),
                ],
              ),
              TextInHotAndNew(title: name, fontSize: 25),
              KHeight,
              TextInHotAndNew(title: 'Released ON  $release', fontSize: 16),
              KHeight,
              Expanded(
                child: TextInHotAndNew(
                  title: overView,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Align TextInHotAndNew({required String title, required double fontSize}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }

  String parseDate(date) {
    DateFormat.yMMMd(date);

    return date;
  }
}

class MoviePopularContent extends StatelessWidget {
  final String title;
  final String overview;
  final String imageUrl;

  const MoviePopularContent({
    super.key,
    required this.title,
    required this.overview,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInHotAndNew(
          title: title,
          fontSize: 20,
          color: KWhiteColor,
        ),
        KHeight,
        TextInHotAndNew(
          title: overview,
          fontSize: 13,
          color: kGreyColor,
        ),
        kHeight40,
        VideoWidget(imageUrl: imageUrl),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ReelButtonsList(
              icon: CupertinoIcons.share,
              title: 'Share',
              buttonAction: () {},
            ),
            KWidth,
            ReelButtonsList(
              icon: CupertinoIcons.add,
              title: 'My List',
              buttonAction: () {},
            ),
            ReelButtonsList(
              icon: CupertinoIcons.play,
              title: 'Play',
              buttonAction: () {},
            ),
          ],
        ),
        kHeight40,
      ],
    );
  }

  Align TextInHotAndNew(
      {required String title, required double fontSize, required Color color}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}
