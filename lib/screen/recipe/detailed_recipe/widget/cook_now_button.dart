import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class CookNowButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool colorChanged;

  const CookNowButton({
    Key? key,
    required this.onPressed,
    required this.colorChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        primary: colorChanged ? CustomColor.logoColor : Colors.white,
        textStyle: buttonStyle.copyWith(
          fontSize: 14,
          letterSpacing: 0.4,
          height: 1.2,
        ),
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.add),
      label: const Text('Cook Now'),
    );
  }
}
