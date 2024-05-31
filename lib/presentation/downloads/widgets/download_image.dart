import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tutorial2/application/downloads/downloads_bloc.dart';
import 'package:project_tutorial2/core/strings.dart';

class TopMovieImagesCurved extends StatelessWidget {
  const TopMovieImagesCurved({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
        return state.downloadsList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                width: size.width,
                height: 320,
                child: state.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: size.width * 0.45,
                            backgroundColor: Colors.grey.withOpacity(0.4),
                          ),
                          DownloadImageWidget(
                            imageUrl:
                                '${imageAppend + state.downloadsList[0].posterPath}',
                            angle: 45,
                            margin:
                                const EdgeInsets.only(left: 180, bottom: 20),
                          ),
                          DownloadImageWidget(
                            imageUrl:
                                '${imageAppend + state.downloadsList[1].posterPath}',
                            angle: -45,
                            margin:
                                const EdgeInsets.only(right: 180, bottom: 20),
                          ),
                          Positioned(
                            top: 40,
                            child: DownloadImageWidget(
                              imageUrl:
                                  '${imageAppend + state.downloadsList[2].posterPath}',
                              angle: 0,
                              margin: const EdgeInsets.only(left: 0),
                              height: 245,
                              width: 165,
                            ),
                          ),
                        ],
                      ),
              );
      },
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    required this.imageUrl,
    required this.angle,
    required this.margin,
    this.height = 220,
    this.width = 135,
  });

  final String imageUrl;
  final double angle;
  final EdgeInsets margin;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle / 150,
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
