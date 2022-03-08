import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class HomeLogoText extends StatelessWidget {
  final String logo;

  const HomeLogoText({Key? key, required this.logo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      logo,
      style: headingFourStyle.copyWith(height: 1, letterSpacing: 0.4),
    );
  }
}
