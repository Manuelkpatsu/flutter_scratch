import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/app_icon_button.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onFilterTap;
  final void Function(String)? onChanged;

  const SearchTextField({
    Key? key,
    required this.controller,
    required this.onFilterTap,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: CustomColor.buttonShadowColor,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextField(
        cursorColor: CustomColor.primaryColor,
        controller: controller,
        style: grayTextStyle,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          hintText: 'Search for recipe, people or tag',
          hintStyle: subtleTextStyle,
          prefixIcon: const Icon(Icons.search, color: CustomColor.logoColor),
          suffixIcon: AppIconButton(
            icon: Icons.tune_rounded,
            color: CustomColor.logoColor,
            onPressed: onFilterTap,
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
      ),
    );
  }
}
