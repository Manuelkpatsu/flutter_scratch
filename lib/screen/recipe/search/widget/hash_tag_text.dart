import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class HashTagText extends StatelessWidget {
  final String hashTag;

  const HashTagText({Key? key, required this.hashTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '#$hashTag'.toLowerCase(),
      style: leadStyle,
    );
  }
}
