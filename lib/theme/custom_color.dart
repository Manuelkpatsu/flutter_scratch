import 'package:flutter/material.dart';

class CustomColor {
  static const MaterialColor white = MaterialColor(
    0xffffffff,
    <int, Color>{
      50: Color(0xffe6e6e6),
      100: Color(0xffcccccc),
      200: Color(0xffb3b3b3),
      300: Color(0xff999999),
      400: Color(0xff808080),
      500: Color(0xff666666),
      600: Color(0xff4c4c4c),
      700: Color(0xff333333),
      800: Color(0xff191919),
      900: Color(0xff000000),
    },
  );

  static const Color primaryColor = Color(0xff30be76);
  static const Color lightPrimaryColor = Color.fromRGBO(48, 190, 118, 0.2);
  static const Color pinkColor = Color(0xfff84971);
  static const Color yellowColor = Color(0xfff8b449);
  static const Color redColor = Color(0xffc44343);
  static const Color textColor = Color(0xff030f09);
  static const Color grayTextColor = Color(0xff606060);
  static const Color lightGrayTextColor = Color(0xffa8a8a8);
  static const Color deepGreyColor = Color(0xff767676);
  static const Color greyColor = Color(0xffcccccc);
  static const Color lightGreyColor = Color(0xffe6e6e6);
  static const Color lighterGreyColor = Color(0xfff7f8fa);
  static const Color strokeColor = Color(0xff979797);
  static const Color logoColor = Color(0xff363837);
  static const Color overlayColor = Color.fromRGBO(40, 41, 40, 0.5);
  static const Color buttonShadowColor = Color.fromRGBO(13, 51, 32, 0.1);
  static const Color cardColor = Color.fromRGBO(0, 0, 0, 0.0001);
}
