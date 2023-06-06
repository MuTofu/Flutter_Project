import 'package:flutter/material.dart';
import 'package:project_hima_rec/page/editPage.dart';
import 'package:project_hima_rec/page/listMenu.dart';
import 'package:project_hima_rec/page/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color.fromRGBO(244, 244, 244, 1)),
      home: ToDo(),
    );
  }
}