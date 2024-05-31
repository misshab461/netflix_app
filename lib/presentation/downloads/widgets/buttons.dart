import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';

class ButtonOnDownloadPage extends StatelessWidget {
  final String buttonTitle;
  final Color buttonColor;
  final EdgeInsets padding;
  final void Function() buttonAction;
  final double fontSize;
  const ButtonOnDownloadPage({
    super.key,
    required this.buttonTitle,
    required this.buttonColor,
    required this.padding,
    required this.buttonAction,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonAction,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
              color: kblackColor,
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
