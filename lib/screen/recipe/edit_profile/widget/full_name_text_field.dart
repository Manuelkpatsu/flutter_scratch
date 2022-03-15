import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/text_input_field.dart';
import 'package:scratch/utils/validator.dart';

class FullNameTextField extends StatelessWidget {
  final TextEditingController controller;

  const FullNameTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      controller: controller,
      label: 'Full Name',
      validator: Validator.fullName,
      inputAction: TextInputAction.next,
      inputType: TextInputType.name,
    );
  }
}
