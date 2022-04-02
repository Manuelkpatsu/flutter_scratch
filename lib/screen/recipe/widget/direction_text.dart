import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class DirectionText extends StatelessWidget {
  final String direction;

  const DirectionText({Key? key, required this.direction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        direction,
        style: bodyStyle.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
