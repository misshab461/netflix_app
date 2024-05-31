import 'package:flutter/material.dart';

import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/core/constants.dart';
import 'package:project_tutorial2/presentation/downloads/widgets/buttons.dart';
import 'package:project_tutorial2/presentation/downloads/widgets/download_image.dart';
import 'package:project_tutorial2/presentation/downloads/widgets/introducing_download.dart';
import 'package:project_tutorial2/presentation/downloads/widgets/smart_downloads.dart';
import 'package:project_tutorial2/presentation/widgets/appbar_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            KHeight,
            const SmartDOwnloads(),
            KHeight,
            const IntroducingDownloadsText(),
            KHeight,
            TopMovieImagesCurved(size: size),
            const SizedBox(height: 20),
            ButtonOnDownloadPage(
              buttonAction: () {},
              buttonColor: kbuttonColorBlue,
              buttonTitle: 'Set Up',
              padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 14),
            ),
            KHeight,
            ButtonOnDownloadPage(
              buttonAction: () {},
              buttonColor: kbuttonColorWhite,
              buttonTitle: 'See What You Can Download',
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              fontSize: 17,
            ),
          ],
        ),
      ),
    );
  }
}
