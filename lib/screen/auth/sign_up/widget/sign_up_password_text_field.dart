import 'package:flutter/material.dart';

import '../../../../utils/validator.dart';
import '../../../widget/password_input_field.dart';

class SignUpPasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback? toggle;

  const SignUpPasswordTextField({
    Key? key,
    required this.controller,
    required this.obscureText,
    required this.toggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PasswordInputField(
        controller: controller,
        toggle: toggle,
        label: 'Password',
        obscureText: obscureText,
        validator: Validator.password,
        inputAction: TextInputAction.done,
      ),
    );
  }
}
