import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/search/search_bloc.dart';
import 'package:project_tutorial2/core/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoSearchTextField(
        onChanged: (value) {
          context
              .read<SearchBloc>()
              .add(SearchEvent.searchMovie(movieQuery: value));
        },
        backgroundColor: ksearchTextFieldColor,
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: ksearchTextFielIcondColor,
        ),
        suffixIcon: const Icon(
          CupertinoIcons.xmark_circle_fill,
          color: ksearchTextFielIcondColor,
        ),
        style: const TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
      ),
    );
  }
}
