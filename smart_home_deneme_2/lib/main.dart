import 'package:flutter/material.dart';
import 'package:smart_home_deneme_2/pages/main_page.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: MainColors.greenColor,
        tabBarTheme: TabBarTheme(
          labelColor: MainColors.greenColor,
          unselectedLabelColor: MainColors.veryLightGrey,
          indicator: BoxDecoration(),
        ),
        scaffoldBackgroundColor: MainColors.darkGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      // home: CustomDropDown(items: ["This Month"]),
    );
  }
}
