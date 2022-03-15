import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/custom_switch_tile.dart';

class FollowersSeeProfilesSwitch extends CustomSwitchTile {
  const FollowersSeeProfilesSwitch({
    Key? key,
    required bool value,
    required void Function(bool p1)? onChanged,
  }) : super(
          key: key,
          title: 'Followers can see profiles i follow',
          value: value,
          onChanged: onChanged,
        );
}
