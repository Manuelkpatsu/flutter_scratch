import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class ViewIngredientsButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ViewIngredientsButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'View Ingredients',
        style: buttonStyle.copyWith(
          color: CustomColor.primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
