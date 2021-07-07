import 'package:flutter/material.dart';
import 'package:yuka/res/app_color.dart';
import 'layouts/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily : 'Avenir',
        primaryColor: AppColors.blue,
        primaryColorDark: AppColors.blueDark,
        accentColor: AppColors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
