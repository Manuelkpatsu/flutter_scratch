import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/text_input_field.dart';
import 'package:scratch/utils/validator.dart';

class LoginEmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const LoginEmailTextField({Key? key, required this.controller})
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
