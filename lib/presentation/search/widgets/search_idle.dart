import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/search/search_bloc.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/presentation/search/widgets/search_title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        KHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state.idleList.isEmpty) {
                return Center(child: CircularProgressIndicator.adaptive());
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];
                    return TopSearchImages(
                        posterPath: movie.posterPath, name: movie.movieName);
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: state.idleList.length);
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchImages extends StatelessWidget {
  final String posterPath;
  final String name;
  TopSearchImages({super.key, required this.posterPath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.5),
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('$imageAppend$posterPath'),
            ),
          ),
        ),
        KWidth,
        Expanded(
          child: Text(
            name,
            style: const TextStyle(
              color: KWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        KWidth,
        const Icon(
          CupertinoIcons.play_circle,
          color: KWhiteColor,
          size: 50,
        )
      ],
    );
  }
}
