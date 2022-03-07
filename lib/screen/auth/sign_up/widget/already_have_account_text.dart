import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Already have an account?',
          textAlign: TextAlign.center,
          style: subtleTextStyle,
        ),
      ),
    );
  }
}
