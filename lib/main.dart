import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calcos',
      theme: ThemeData.dark().copyWith(
        // This is the theme of your application.
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          subtitle1: TextStyle(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.purple),
      ),
      home: const MyHomePage(title: 'BMI Calcos'),
    );
  }
}
