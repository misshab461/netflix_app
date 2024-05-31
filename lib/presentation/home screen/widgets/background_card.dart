import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/downloads/downloads_bloc.dart';
import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/presentation/home%20screen/widgets/Buttons.dart';

class BackgrounCard extends StatelessWidget {
  BackgrounCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<DownloadsBloc>().add(const DownloadsEvent.getDownlodImages());

    return Stack(
      children: [
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return state.downloadsList.isEmpty
                ? SizedBox()
                : Container(
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            '$imageAppend${state.downloadsList[0].posterPath}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
          },
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AddInfoButtons(title: 'My List', icon: CupertinoIcons.add),
              PlayButtonWidget(),
              AddInfoButtons(title: 'Info', icon: CupertinoIcons.info)
            ],
          ),
        ),
      ],
    );
  }
}
