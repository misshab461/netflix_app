import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/Home/home_bloc.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/presentation/home%20screen/widgets/background_card.dart';
import 'package:project_tutorial2/presentation/home%20screen/widgets/custum_app_bar.dart';
import 'package:project_tutorial2/presentation/home%20screen/widgets/number_card_modified.dart';
import 'package:project_tutorial2/presentation/widgets/main_card_with_heading.dart';

final ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const GetHomeData());

    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }

                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      BackgrounCard(),
                      KHeight,
                      MainCardWithHeadingtop(
                        title: 'Top Rated',
                      ),
                      KHeight,
                      MainCardWithHeadingtrend(
                        title: 'Trending Now',
                      ),
                      KHeight,
                      CardWithNumber(),
                      KHeight,
                      MainCardWithHeadingUpcoming(
                        title: 'Upcoming Movies',
                      ),
                      KHeight,
                      MainCardWithHeadingNow(
                        title: 'Now Playing Movies',
                      ),
                    ],
                  ),
                  scrollNotifier.value ? HomeCustumAppBar() : KWidth,
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
