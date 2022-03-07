import 'package:flutter/material.dart';

import '../../../../utils/validator.dart';
import '../../../widget/text_input_field.dart';

class SignUpEmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const SignUpEmailTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextInputField(
        controller: controller,
        label: 'Email address',
        validator: Validator.email,
        inputAction: TextInputAction.next,
        inputType: TextInputType.emailAddress,
      ),
    );
  }
}
