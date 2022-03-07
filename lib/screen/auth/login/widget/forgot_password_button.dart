import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: onTap,
          child: const Text(
            'Forgot Password?',
            style: grayTextStyle,
          ),
        ),
      ),
    );
  }
}
