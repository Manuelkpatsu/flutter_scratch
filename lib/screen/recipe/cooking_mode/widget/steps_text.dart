import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class StepsText extends StatelessWidget {
  const StepsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Steps',
      style: leadStyle.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
