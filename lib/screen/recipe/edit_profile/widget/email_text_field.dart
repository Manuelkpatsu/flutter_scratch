import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/text_input_field.dart';
import 'package:scratch/utils/validator.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const EmailTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      controller: controller,
      label: 'Email',
      validator: Validator.email,
      inputAction: TextInputAction.next,
      inputType: TextInputType.emailAddress,
    );
  }
}
