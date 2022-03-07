import 'package:flutter/material.dart';

import '../../../../theme/styles.dart';

class SignUpTitleText extends StatelessWidget {
  final String title;

  const SignUpTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: headingThreeStyle.copyWith(height: 1),
    );
  }
}
