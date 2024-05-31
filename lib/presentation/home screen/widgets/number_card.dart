import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class NumberCard extends StatelessWidget {
  final String url;
  final int index;
  const NumberCard({
    super.key,
    required this.index,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(width: 60),
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 230,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kborderRadius,
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 78,
          left: 5,
          child: StrokeText(
            text: '${index + 1}',
            strokeWidth: 7,
            strokeColor: Colors.grey.withOpacity(.9),
            textStyle: TextStyle(
                fontSize: 128,
                color: kTextBlackColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
