import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/text_input_field.dart';
import 'package:scratch/utils/validator.dart';

class PhoneNumberTextField extends StatelessWidget {
  final TextEditingController controller;

  const PhoneNumberTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      controller: controller,
      label: 'Phone',
      validator: Validator.phoneNumber,
      inputAction: TextInputAction.done,
      inputType: TextInputType.phone,
    );
  }
}
