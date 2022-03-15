import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class SettingsText extends StatelessWidget {
  const SettingsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Settings',
        style: headingThreeStyle.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
