import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class EditProfileText extends StatelessWidget {
  const EditProfileText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Edit Profile',
      style: headingThreeStyle.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
