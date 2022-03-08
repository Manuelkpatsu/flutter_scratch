import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final double? size;
  final Color color;

  const AppIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.size = 24,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: color,
        size: size,
      ),
      splashRadius: 20,
    );
  }
}
