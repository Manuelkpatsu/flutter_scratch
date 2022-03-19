import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class AddNewRecipeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddNewRecipeButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.add, color: CustomColor.primaryColor, size: 14),
      label: Text(
        'Add New',
        style: buttonStyle.copyWith(color: CustomColor.primaryColor),
      ),
    );
  }
}
