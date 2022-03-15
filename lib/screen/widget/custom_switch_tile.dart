import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class CustomSwitchTile extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool)? onChanged;

  const CustomSwitchTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      dense: true,
      title: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: leadStyle.copyWith(fontWeight: FontWeight.w400),
      ),
      trailing: Transform.scale(
        scale: 0.6,
        child: CupertinoSwitch(
          activeColor: CustomColor.primaryColor,
          trackColor: CustomColor.inactiveTrackColor,
          thumbColor: Colors.white,
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
