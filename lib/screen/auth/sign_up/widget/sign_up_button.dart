import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SignUpButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Create Account'),
      ),
    );
  }
}
