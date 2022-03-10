import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class IngredientText extends StatelessWidget {
  final int ingredient;

  const IngredientText({Key? key, required this.ingredient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ingredient.toString(),
      style: subtleTextStyle,
    );
  }
}
