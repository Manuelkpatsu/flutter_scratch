import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class AboutUserText extends StatelessWidget {
  final String about;

  const AboutUserText({Key? key, required this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      about,
      style: grayTextStyle,
    );
  }
}
