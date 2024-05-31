import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/presentation/hot%20and%20new/widgets/appbar_hot_new.dart';
import 'package:project_tutorial2/presentation/hot%20and%20new/widgets/coming_soon.dart';
import 'package:project_tutorial2/presentation/hot%20and%20new/widgets/everyone_watching.dart';

class HotNewScreen extends StatelessWidget {
  const HotNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: AppBarText(),
          actions: [
            icons1(),
            KWidth,
            icons2(),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            dividerColor: kblackColor,
            indicator: BoxDecoration(
              color: KWhiteColor,
              borderRadius: BorderRadius.circular(50),
            ),
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: KWhiteColor,
            labelColor: kblackColor,
            tabs: const [
              Tab(
                text: '🍿Popular TV Shows',
              ),
              Tab(
                text: "👀 Popular Movie ",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PopularTvShows(),
            PopularMovie(),
          ],
        ),
      ),
    );
  }
}
