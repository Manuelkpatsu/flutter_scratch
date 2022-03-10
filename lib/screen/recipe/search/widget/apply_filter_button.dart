import 'package:flutter/material.dart';

class ApplyFilterButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ApplyFilterButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Apply Filter'),
    );
  }
}
