import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_tutorial2/presentation/widgets/main_page.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: MainPageScreen.bottomNavNotifier,
      builder: (context, value, child) {
        return BottomNavigationBar(
          onTap: (newIndex) {
            MainPageScreen.bottomNavNotifier.value = newIndex;
          },
          iconSize: 27,
          currentIndex: value,
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: const Color.fromARGB(255, 106, 103, 103),
          useLegacyColorScheme: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.collections), label: 'New&Hot'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.download_circle), label: 'Downloads'),
          ],
        );
      },
    );
  }
}
