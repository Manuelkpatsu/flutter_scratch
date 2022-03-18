import 'package:flutter/material.dart';

class FollowUserButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const FollowUserButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Follow'),
    );
  }
}
