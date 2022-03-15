import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/custom_switch_tile.dart';

class LiveCookingSwitch extends CustomSwitchTile {
  const LiveCookingSwitch({
    Key? key,
    required bool value,
    required void Function(bool p1)? onChanged,
  }) : super(
          key: key,
          title: 'When someone do live cooking',
          value: value,
          onChanged: onChanged,
        );
}
