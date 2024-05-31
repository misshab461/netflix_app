import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/presentation/hot%20and%20new/widgets/contents.dart';

class PopularMovie extends StatelessWidget {
  const PopularMovie({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<HotAndNewBloc>()
        .add(const HotAndNewEvent.onMoviePopularEvent());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isError) {
            const Center(
              child: Text('Some Error Occured'),
            );
          } else if (state.isLoading) {
            const Center(
              child: CircularProgressIndicator(strokeWidth: 1),
            );
          }
          return ListView.builder(
              shrinkWrap: true,
              itemCount: state.onMoviePopularList.length,
              itemBuilder: (context, index) {
                final movie = state.onMoviePopularList[index];

                return MoviePopularContent(
                  title: '${movie.title}',
                  overview: '${movie.overview}',
                  imageUrl: '$imageAppend${movie.backdropPath}',
                );
              });
        },
      ),
    );
  }
}
