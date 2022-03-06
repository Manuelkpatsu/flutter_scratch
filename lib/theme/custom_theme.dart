import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_color.dart';
import 'styles.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      shadowColor: CustomColor.buttonShadowColor,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: CustomColor.primaryColor,
      fontFamily: 'NunitoSans',
      canvasColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: CustomColor.textColor),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      primarySwatch: CustomColor.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: CustomColor.primaryColor,
          textStyle: buttonStyle,
          elevation: 0,
          onPrimary: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          minimumSize: const Size(double.infinity, 50),
          shadowColor: CustomColor.buttonShadowColor,
        ),
      ),
    );
  }
}
