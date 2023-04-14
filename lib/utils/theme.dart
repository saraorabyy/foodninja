
import 'package:flutter/material.dart';

const Color mainColor=Color(0xff00BE84);


class ThemeApp{

  static final light=ThemeData(
    primaryColor: mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light


  );
  static final dark=ThemeData(

      primaryColor: mainColor,
      backgroundColor: Colors.black,
      brightness: Brightness.dark
  );
}