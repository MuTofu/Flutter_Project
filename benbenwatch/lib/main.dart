import 'package:benbenwatch/Color/color.dart';
import 'package:benbenwatch/page/home.dart';
import 'package:benbenwatch/page/home_test.dart';
import 'package:benbenwatch/page/landing.dart';
import 'package:benbenwatch/page/more_movie.dart';
import 'package:benbenwatch/page/movie.dart';
import 'package:benbenwatch/widget/item_home.dart';
import 'package:benbenwatch/widget/item_movie.dart';
import 'package:benbenwatch/widget/jumbotron_home.dart';
import 'package:benbenwatch/widget/listview_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColor().blackApp,
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

