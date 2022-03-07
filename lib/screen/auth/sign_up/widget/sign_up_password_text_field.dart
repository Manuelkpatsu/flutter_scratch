import 'package:flutter/material.dart';

import '../../../../utils/validator.dart';
import '../../../widget/password_input_field.dart';

class SignUpPasswordTextField extends PasswordInputField {
  SignUpPasswordTextField({
    Key? key,
    required TextEditingController controller,
    required bool obscureText,
    required VoidCallback? toggle,
  }) : super(
          key: key,
          controller: controller,
          label: 'Password',
          obscureText: obscureText,
          toggle: toggle,
          validator: Validator.password,
          inputAction: TextInputAction.done,
        );
}
