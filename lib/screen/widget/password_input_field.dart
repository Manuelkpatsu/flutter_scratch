import 'package:flutter/material.dart';

import '../../theme/custom_color.dart';
import '../../theme/styles.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final VoidCallback? toggle;
  final String label;

  const PasswordInputField({
    Key? key,
    required this.controller,
    required this.label,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.obscureText,
    required this.toggle,
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
        suffixIcon: IconButton(
          color: CustomColor.textColor,
          icon: obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onPressed: toggle,
        ),
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: obscureText,
      validator: validator,
      style: leadStyle,
    );
  }
}
