import 'package:flutter/material.dart';

import 'widget/already_have_account_text.dart';
import 'widget/login_here_button.dart';
import 'widget/sign_up_background_thumbnail.dart';
import 'widget/sign_up_button.dart';
import 'widget/sign_up_email_text_field.dart';
import 'widget/sign_up_info_text.dart';
import 'widget/sign_up_logo_text.dart';
import 'widget/sign_up_logo_thumbnail.dart';
import 'widget/sign_up_name_text_field.dart';
import 'widget/sign_up_password_text_field.dart';
import 'widget/sign_up_title_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = true;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SignUpBackgroundThumbnail(
                    image: 'assets/images/auth-img.png'),
                Positioned(
                  top: 60,
                  right: 20,
                  left: 20,
                  child: Row(
                    children: const [
                      SignUpLogoThumbnail(thumbnail: 'assets/images/logo.png'),
                      SizedBox(width: 10),
                      SignUpLogoText(name: 'scratch'),
                    ],
                  ),
                ),
                const Positioned(
                  top: 130,
                  right: 20,
                  left: 20,
                  child: SignUpTitleText(title: 'Start from Scratch'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SignUpInfoText(info: 'Create account to continue.'),
            const SizedBox(height: 20),
            SignUpNameTextField(controller: _fullNameController),
            const SizedBox(height: 20),
            SignUpEmailTextField(controller: _emailController),
            const SizedBox(height: 20),
            SignUpPasswordTextField(
              controller: _passwordController,
              toggle: () => setState(() => _showPassword = !_showPassword),
              obscureText: _showPassword,
            ),
            const SizedBox(height: 30),
            SignUpButton(onPressed: () {}),
            const SizedBox(height: 30),
            const AlreadyHaveAccountText(),
            LoginHereButton(onPressed: () {}),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
