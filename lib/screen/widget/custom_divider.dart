import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color color;

  const CustomDivider({
    Key? key,
    this.padding = EdgeInsets.zero,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        color: color,
        height: 0,
        thickness: 0.5,
      ),
    );
  }
}
