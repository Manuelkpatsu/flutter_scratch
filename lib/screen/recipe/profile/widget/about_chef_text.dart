import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class AboutChefText extends StatelessWidget {
  final String about;

  const AboutChefText({Key? key, required this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      about,
      style: grayTextStyle,
    );
  }
}
