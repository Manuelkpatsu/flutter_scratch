import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/text_input_field.dart';

import '../../../../utils/validator.dart';

class SignUpNameTextField extends TextInputField {
  SignUpNameTextField({
    Key? key,
    required TextEditingController controller,
  }) : super(
          key: key,
          controller: controller,
          label: 'Full Name',
          validator: Validator.fullName,
          inputAction: TextInputAction.next,
          inputType: TextInputType.name,
        );
}
