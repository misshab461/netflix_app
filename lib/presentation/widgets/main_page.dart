import 'package:flutter/material.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/presentation/downloads/downloads_screen.dart';
import 'package:project_tutorial2/presentation/home%20screen/home_screen.dart';
import 'package:project_tutorial2/presentation/hot%20and%20new/hot_new_screen.dart';
import 'package:project_tutorial2/presentation/search/search_screen.dart';
import 'package:project_tutorial2/presentation/widgets/bottom_nav.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});

  static final ValueNotifier<int> bottomNavNotifier = ValueNotifier(0);

  final _pages = [
    const HomeScreen(),
    const HotNewScreen(),
    const SearchScreen(),
    const DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: ValueListenableBuilder(
        valueListenable: bottomNavNotifier,
        builder: (context, value, child) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: MyBottomNav(),
    );
  }
}
