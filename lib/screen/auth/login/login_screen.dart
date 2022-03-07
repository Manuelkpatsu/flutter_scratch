import 'package:flutter/material.dart';

import 'widget/create_account_button.dart';
import 'widget/forgot_password_button.dart';
import 'widget/login_background_thumbnail.dart';
import 'widget/login_button.dart';
import 'widget/login_email_text_field.dart';
import 'widget/login_info_text.dart';
import 'widget/login_logo_text.dart';
import 'widget/login_logo_thumbnail.dart';
import 'widget/login_password_text_field.dart';
import 'widget/login_title_text.dart';
import 'widget/new_to_scratch_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const LoginBackgroundThumbnail(
                      image: 'assets/images/auth-img.png'),
                  Positioned(
                    top: 60,
                    right: 20,
                    left: 20,
                    child: Row(
                      children: const [
                        LoginLogoThumbnail(thumbnail: 'assets/images/logo.png'),
                        SizedBox(width: 10),
                        LoginLogoText(name: 'scratch'),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    right: 20,
                    left: 20,
                    child: LoginTitleText(title: 'Welcome Back!'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const LoginInfoText(info: 'Please login to continue.'),
              const SizedBox(height: 20),
              LoginEmailTextField(controller: _emailController),
              const SizedBox(height: 20),
              LoginPasswordTextField(
                controller: _passwordController,
                obscureText: _showPassword,
                toggle: () => setState(() => _showPassword = !_showPassword),
              ),
              const SizedBox(height: 20),
              ForgotPasswordButton(onTap: () {}),
              const SizedBox(height: 30),
              LoginButton(onPressed: () {}),
              const SizedBox(height: 30),
              const NewToScratchText(),
              CreateAccountButton(onPressed: () {}),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
