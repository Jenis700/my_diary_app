import 'package:flutter/material.dart';
import 'package:my_diary_app/Model/constant.dart';
import 'package:my_diary_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: kBlueColor.withOpacity(0.5),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
