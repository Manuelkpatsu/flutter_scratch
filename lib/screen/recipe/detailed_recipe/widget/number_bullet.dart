import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class NumberBullet extends StatelessWidget {
  final int number;

  const NumberBullet({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: const ShapeDecoration(
        shape: CircleBorder(
            side: BorderSide(width: 1, color: CustomColor.primaryColor)),
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: captionStyle.copyWith(
            color: CustomColor.primaryColor,
            height: 1,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.0,
          ),
        ),
      ),
    );
  }
}
