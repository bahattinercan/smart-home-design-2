import 'package:flutter/material.dart';

class MainColors {
  //static final greenColor = Color.fromARGB(255, 188, 231, 5);
  static final darkGrey = Color.fromARGB(255, 26, 26, 26);
  static final grey = Color.fromARGB(255, 44, 44, 44);
  static final lightGrey = Color.fromARGB(255, 69, 69, 69);
  static final veryLightGrey = Color.fromARGB(255, 157, 157, 157);

  static MaterialColor greenColor = MaterialColor(
    Color.fromRGBO(188, 231, 5, 1).value,
    <int, Color>{
      50: Color.fromRGBO(188, 231, 5, .1),
      100: Color.fromRGBO(188, 231, 5, .2),
      200: Color.fromRGBO(188, 231, 5, .3),
      300: Color.fromRGBO(188, 231, 5, .4),
      400: Color.fromRGBO(188, 231, 5, .5),
      500: Color.fromRGBO(188, 231, 5, .6),
      600: Color.fromRGBO(188, 231, 5, .7),
      700: Color.fromRGBO(188, 231, 5, .8),
      800: Color.fromRGBO(188, 231, 5, .9),
      900: Color.fromRGBO(188, 231, 5, 1),
    },
  );
}
