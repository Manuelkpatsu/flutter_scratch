import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class PrivateInformationText extends StatelessWidget {
  const PrivateInformationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Private Information',
      style: headingFiveStyle.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
