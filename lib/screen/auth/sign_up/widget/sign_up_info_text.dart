import 'package:flutter/material.dart';

import '../../../../theme/styles.dart';

class SignUpInfoText extends StatelessWidget {
  final String info;

  const SignUpInfoText({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: grayTextStyle,
    );
  }
}
