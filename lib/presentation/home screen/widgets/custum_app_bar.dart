import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';

class HomeCustumAppBar extends StatelessWidget {
  HomeCustumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 5),
      width: double.infinity,
      height: 100,
      color: Colors.transparent.withOpacity(0.5),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/netflix.png',
                height: 75,
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                  size: 45,
                  color: KWhiteColor,
                ),
              ),
              KWidth,
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 8, 80, 138),
                    borderRadius: BorderRadius.circular(8)),
                width: 45,
                height: 45,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('TV Shows', style: khomeTitleText),
              Text('Movies', style: khomeTitleText),
              Text('Categories', style: khomeTitleText),
            ],
          ),
        ],
      ),
    );
  }
}
