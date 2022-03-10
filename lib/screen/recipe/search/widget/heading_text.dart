import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  final EdgeInsetsGeometry padding;

  const HeadingText({
    Key? key,
    required this.heading,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        heading,
        style: headingFiveStyle,
      ),
    );
  }
}
