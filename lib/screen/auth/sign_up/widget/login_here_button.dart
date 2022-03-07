import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class LoginHereButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const LoginHereButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          'Login here',
          textAlign: TextAlign.center,
          style: buttonStyle.copyWith(color: CustomColor.primaryColor),
        ),
      ),
    );
  }
}
