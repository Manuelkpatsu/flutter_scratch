import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const LogoutButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.logout, color: CustomColor.logoColor, size: 14),
      label: Text(
        'Logout',
        style: buttonStyle.copyWith(color: CustomColor.primaryColor),
      ),
    );
  }
}
