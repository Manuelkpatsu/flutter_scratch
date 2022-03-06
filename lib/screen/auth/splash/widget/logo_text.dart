import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class LogoText extends StatelessWidget {
  final String name;

  const LogoText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toLowerCase(),
      style: headingFourStyle.copyWith(
        height: 1,
        letterSpacing: 0.4,
        color: CustomColor.logoColor,
      ),
    );
  }
}
