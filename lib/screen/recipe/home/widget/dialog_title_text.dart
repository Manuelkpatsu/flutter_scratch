import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class DialogTitleText extends StatelessWidget {
  final String title;

  const DialogTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: headingFourStyle);
  }
}
