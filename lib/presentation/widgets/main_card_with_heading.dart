import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/Home/home_bloc.dart';
import 'package:project_tutorial2/application/downloads/downloads_bloc.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/presentation/widgets/main_movie_card.dart';
import 'package:project_tutorial2/presentation/widgets/main_title.dart';

class MainCardWithHeadingtop extends StatelessWidget {
  final String title;
  MainCardWithHeadingtop({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight,
        Container(
          height: 240,
          width: double.infinity,
          color: kblackColor.withOpacity(.6),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  state.topRated.length,
                  (index) {
                    final movie = state.topRated[index];
                    return MainCardWidget(
                        imageUrlpo: '$imageAppend${movie.posterPath}');
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MainCardWithHeadingtrend extends StatelessWidget {
  final String title;
  MainCardWithHeadingtrend({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    context.read<DownloadsBloc>().add(DownloadsEvent.getDownlodImages());
    log('downlaod state  =========');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight,
        Container(
          height: 240,
          width: double.infinity,
          color: kblackColor.withOpacity(.6),
          child: BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  state.downloadsList.length,
                  (index) {
                    final movie = state.downloadsList[index];
                    return MainCardWidget(
                        imageUrlpo: '$imageAppend${movie.posterPath}');
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MainCardWithHeadingUpcoming extends StatelessWidget {
  final String title;
  MainCardWithHeadingUpcoming({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight,
        Container(
          height: 240,
          width: double.infinity,
          color: kblackColor.withOpacity(.6),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  state.topRated.length,
                  (index) {
                    final movie = state.upcoming[index];
                    return MainCardWidget(
                        imageUrlpo: '$imageAppend${movie.backdropPath}');
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MainCardWithHeadingNow extends StatelessWidget {
  final String title;
  MainCardWithHeadingNow({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight,
        Container(
          height: 240,
          width: double.infinity,
          color: kblackColor.withOpacity(.6),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  state.topRated.length,
                  (index) {
                    final movie = state.nowPlaying[index];
                    return MainCardWidget(
                        imageUrlpo: '$imageAppend${movie.posterPath}');
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
