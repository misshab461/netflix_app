import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/presentation/home%20screen/widgets/number_card.dart';
import 'package:project_tutorial2/presentation/widgets/main_title.dart';

class CardWithNumber extends StatelessWidget {
  CardWithNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<HotAndNewBloc>().add(const HotAndNewEvent.onTvPopularEvent());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: 'Top 10 TV Shows'),
        KHeight,
        Container(
          height: 220,
          width: double.infinity,
          color: kblackColor.withOpacity(.6),
          child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
            builder: (context, state) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(state.onTvPopularList.length, (index) {
                  final movie = state.onTvPopularList[index];
                  return NumberCard(
                    index: index,
                    url: '$imageAppend${movie.posterPath}',
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
