import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                color: KWhiteColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cast,
                    size: 35,
                    color: KWhiteColor,
                  ),
                ),
                KWidth,
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 8, 80, 138),
                      borderRadius: BorderRadius.circular(8)),
                  width: 40,
                  height: 40,
                ),
                KWidth,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
