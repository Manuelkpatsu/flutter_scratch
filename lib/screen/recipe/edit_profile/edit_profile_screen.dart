import 'package:flutter/material.dart';

import 'widget/bio_text_field.dart';
import 'widget/edit_profile_picture_button.dart';
import 'widget/edit_profile_text.dart';
import 'widget/edit_profile_thumbnail.dart';
import 'widget/email_text_field.dart';
import 'widget/full_name_text_field.dart';
import 'widget/phone_number_text_field.dart';
import 'widget/private_information_text.dart';
import 'widget/save_profile_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _bioController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EditProfileText(),
              const SizedBox(height: 20),
              EditProfileThumbnail(
                thumbnail: 'assets/images/user.png',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              EditProfilePictureButton(onPressed: () {}),
              const SizedBox(height: 20),
              FullNameTextField(controller: _fullNameController),
              const SizedBox(height: 10),
              BioTextField(controller: _bioController),
              const SizedBox(height: 40),
              const PrivateInformationText(),
              EmailTextField(controller: _emailController),
              const SizedBox(height: 10),
              PhoneNumberTextField(controller: _phoneNumberController),
              const SizedBox(height: 30),
              SaveProfileButton(onPressed: () {}),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
