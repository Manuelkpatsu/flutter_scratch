import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/custom_switch_tile.dart';

class MessageSwitch extends CustomSwitchTile {
  const MessageSwitch({
    Key? key,
    required bool value,
    required void Function(bool p1)? onChanged,
  }) : super(
          key: key,
          title: 'When someone send me a message',
          value: value,
          onChanged: onChanged,
        );
}
