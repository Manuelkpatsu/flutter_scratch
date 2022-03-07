import 'package:flutter/material.dart';

import '../../../../theme/styles.dart';

class LoginInfoText extends StatelessWidget {
  final String info;

  const LoginInfoText({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        info,
        style: grayTextStyle,
      ),
    );
  }
}
