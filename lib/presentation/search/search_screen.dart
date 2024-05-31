import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/search/search_bloc.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/presentation/search/widgets/after_search_idle.dart';
import 'package:project_tutorial2/presentation/search/widgets/search_idle.dart';
import 'package:project_tutorial2/presentation/search/widgets/search_textfield.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<SearchBloc>().add(const SearchEvent.initialized());
      },
    );
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchTextField(),
            KHeight,
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResult.isEmpty) {
                  return Expanded(child: SearchIdleWidget());
                } else if (state.searchResult.isNotEmpty) {
                  return Expanded(child: AfterSearchIdle());
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
