import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Already have an account?',
        textAlign: TextAlign.center,
        style: subtleTextStyle,
      ),
    );
  }
}
