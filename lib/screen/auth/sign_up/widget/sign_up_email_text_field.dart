import 'package:flutter/material.dart';

import '../../../../utils/validator.dart';
import '../../../widget/text_input_field.dart';

class SignUpEmailTextField extends TextInputField {
  SignUpEmailTextField({
    Key? key,
    required TextEditingController controller,
  }) : super(
          key: key,
          controller: controller,
          label: 'Email',
          validator: Validator.email,
          inputAction: TextInputAction.next,
          inputType: TextInputType.emailAddress,
        );
}
