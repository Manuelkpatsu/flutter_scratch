import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class PrivacySettingsText extends StatelessWidget {
  const PrivacySettingsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Privacy Settings',
        style: grayTextStyle.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
