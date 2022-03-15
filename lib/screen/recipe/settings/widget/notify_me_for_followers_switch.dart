import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/custom_switch_tile.dart';

class NotifyMeForFollowersSwitch extends CustomSwitchTile {
  const NotifyMeForFollowersSwitch({
    Key? key,
    required bool value,
    required void Function(bool p1)? onChanged,
  }) : super(
          key: key,
          title: 'Notify me for followers',
          value: value,
          onChanged: onChanged,
        );
}
