import 'package:flutter/material.dart';

import '../../theme/custom_color.dart';
import '../../theme/styles.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String label;

  const TextInputField({
    Key? key,
    required this.controller,
    required this.label,
    this.inputType,
    this.inputAction,
    this.validator,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: CustomColor.primaryColor,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: subtleTextStyle,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.greyColor, width: 1),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.greyColor, width: 1),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.greyColor, width: 1),
        ),
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      validator: validator,
      textCapitalization: textCapitalization,
      style: leadStyle,
    );
  }
}
