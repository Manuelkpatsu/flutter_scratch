import 'package:flutter/material.dart';

class SaveProfileButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SaveProfileButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Save Profile'),
    );
  }
}
