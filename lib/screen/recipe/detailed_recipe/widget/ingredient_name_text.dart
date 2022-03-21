import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class IngredientNameText extends StatelessWidget {
  final String name;

  const IngredientNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        name.toLowerCase(),
        style: bodyStyle.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
