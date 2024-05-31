import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_tutorial2/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:project_tutorial2/presentation/hot%20and%20new/widgets/contents.dart';

class PopularTvShows extends StatelessWidget {
  const PopularTvShows({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            const Center(
              child: CircularProgressIndicator(strokeWidth: 1),
            );
          } else if (state.isError) {
            const Center(
              child: Text('Some Error Occured'),
            );
          } else if (state.onTvPopularList.isEmpty) {
            const Center(
              child: Text('TV List is Empty'),
            );
          }

          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.onTvPopularList.length,
            itemBuilder: (context, index) {
              final movie = state.onTvPopularList[index];

              if (state.onTvPopularList.isEmpty) {
                const Center(child: CircularProgressIndicator(strokeWidth: 1));
              }

              final DateTime date = DateTime.parse(movie.firstAirDate!);
              final parsedDate = DateFormat.yMMMMd('en_US').format(date);

              return PopularTvShowsContent(
                name: movie.originalTitle ?? 'No Title Provided',
                day: movie.firstAirDate!.split('-')[2],
                month:
                    parsedDate.split(' ').first.substring(0, 3).toUpperCase(),
                imageUrl: movie.backdropPath ?? 'No Image Provided',
                overView: movie.overview ?? 'No Description',
                release: movie.firstAirDate.toString(),
              );
            },
          );
        },
      ),
    );
  }
}
