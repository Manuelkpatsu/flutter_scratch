import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/text_input_field.dart';

import '../../../../utils/validator.dart';

class SignUpNameTextField extends StatelessWidget {
  final TextEditingController controller;

  const SignUpNameTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextInputField(
        controller: controller,
        label: 'Full Name',
        validator: Validator.fullName,
        inputAction: TextInputAction.next,
        inputType: TextInputType.name,
      ),
    );
  }
}
