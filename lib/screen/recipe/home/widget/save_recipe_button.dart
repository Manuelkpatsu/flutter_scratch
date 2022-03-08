import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class SaveRecipeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SaveRecipeButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.add),
      label: const Text('Save'),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(73, 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: CustomColor.primaryColor, width: 1),
        ),
        primary: Colors.white,
        onPrimary: CustomColor.primaryColor,
        textStyle: buttonStyle.copyWith(
          fontSize: 14,
          letterSpacing: 0.4,
          height: 1.2,
        ),
      ),
    );
  }
}
