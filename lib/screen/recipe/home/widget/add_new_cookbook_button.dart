import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class AddNewCookbookButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddNewCookbookButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(
        Icons.add,
        color: CustomColor.primaryColor,
      ),
      label: Text(
        'Add New Cookbook',
        style: buttonStyle.copyWith(color: CustomColor.primaryColor),
      ),
    );
  }
}
