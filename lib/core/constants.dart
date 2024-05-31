import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';

const KWidth = SizedBox(width: 10);
const KHeight = SizedBox(height: 10);
const kHeight40 = SizedBox(height: 40);

//radius
final BorderRadius kborderRadius = BorderRadius.circular(10);

//textstyle

TextStyle khomeTitleText = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w900,
    shadows: [
      Shadow(offset: Offset(0, 5), color: kblackColor, blurRadius: 10)
    ]);
