import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';

Container icons2() {
  return Container(
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 8, 80, 138),
        borderRadius: BorderRadius.circular(8)),
    width: 40,
    height: 40,
  );
}

IconButton icons1() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.cast,
      size: 35,
      color: KWhiteColor,
    ),
  );
}

Text AppBarText() {
  return const Text(
    'Hot & New',
    style: TextStyle(
      fontSize: 30,
      color: KWhiteColor,
      fontWeight: FontWeight.w900,
    ),
  );
}
