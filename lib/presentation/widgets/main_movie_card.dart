import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/constants.dart';

class MainCardWidget extends StatelessWidget {
  final String imageUrlpo;
  const MainCardWidget({
    super.key,
    required this.imageUrlpo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 250,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: kborderRadius,
        image: DecorationImage(
          image: NetworkImage(imageUrlpo),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
