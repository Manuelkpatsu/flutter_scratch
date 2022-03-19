import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class RecipeDurationIngredientsText extends StatelessWidget {
  final int duration;
  final int ingredients;

  const RecipeDurationIngredientsText({
    Key? key,
    required this.duration,
    required this.ingredients,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '± $duration mins • $ingredients ingredients',
      style: grayTextStyle.copyWith(fontWeight: FontWeight.w400),
    );
  }
}
