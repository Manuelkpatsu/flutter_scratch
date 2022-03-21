import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class ExpandedDetailedRecipeNameText extends StatelessWidget {
  final String name;

  const ExpandedDetailedRecipeNameText({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      bottom: 10,
      child: Text(
        name,
        style: headingThreeStyle.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
    );
  }
}
