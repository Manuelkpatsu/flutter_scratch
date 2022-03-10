import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class ServingTimeText extends StatelessWidget {
  final int minTime;
  final int maxTime;

  const ServingTimeText({
    Key? key,
    required this.minTime,
    required this.maxTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$minTime-$maxTime mins',
      style: subtleTextStyle,
    );
  }
}
