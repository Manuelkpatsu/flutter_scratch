import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/text_input_field.dart';
import 'package:scratch/utils/validator.dart';

class BioTextField extends StatelessWidget {
  final TextEditingController controller;

  const BioTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      controller: controller,
      label: 'Bio',
      validator: Validator.bio,
      inputAction: TextInputAction.next,
      inputType: TextInputType.text,
      textCapitalization: TextCapitalization.sentences,
    );
  }
}
