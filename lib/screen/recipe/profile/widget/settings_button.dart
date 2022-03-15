import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class SettingsButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SettingsButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.settings, color: CustomColor.logoColor, size: 14),
      label: Text(
        'Settings',
        style: buttonStyle.copyWith(color: CustomColor.primaryColor),
      ),
    );
  }
}
