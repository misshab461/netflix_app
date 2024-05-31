import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_tutorial2/application/Home/home_bloc.dart';
import 'package:project_tutorial2/application/downloads/downloads_bloc.dart';
import 'package:project_tutorial2/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:project_tutorial2/application/search/search_bloc.dart';
import 'package:project_tutorial2/core/colors.dart';
import 'package:project_tutorial2/domain/core/di/injectable.dart';
import 'package:project_tutorial2/presentation/widgets/main_page.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: kblackColor),
          fontFamily: GoogleFonts.amethysta().fontFamily,
          scaffoldBackgroundColor: backgroudColor,
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: MainPageScreen(),
      ),
    );
  }
}
