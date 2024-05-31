import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/search/search_bloc.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/presentation/search/widgets/search_title.dart';

class AfterSearchIdle extends StatelessWidget {
  const AfterSearchIdle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        KHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                childAspectRatio: 1.8 / 2.7,
                children: List.generate(
                  state.searchResult.length,
                  (index) {
                    final movie = state.searchResult[index];
                    return MainMovieCards(searchImageUrl: movie.posterPath);
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

class MainMovieCards extends StatelessWidget {
  final String searchImageUrl;

  const MainMovieCards({super.key, required this.searchImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("$imageAppend$searchImageUrl"),
        ),
      ),
    );
  }
}
