import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class AdditionalInfoHeadingText extends StatelessWidget {
  final String heading;

  const AdditionalInfoHeadingText({Key? key, required this.heading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Text(
        heading,
        style: subtleTextStyle.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
