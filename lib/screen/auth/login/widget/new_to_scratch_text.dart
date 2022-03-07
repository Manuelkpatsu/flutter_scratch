import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class NewToScratchText extends StatelessWidget {
  const NewToScratchText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'New to Scratch?',
          textAlign: TextAlign.center,
          style: subtleTextStyle,
        ),
      ),
    );
  }
}
