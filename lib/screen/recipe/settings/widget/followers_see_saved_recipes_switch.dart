import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/custom_switch_tile.dart';

class FollowersSeeSavedRecipesSwitch extends CustomSwitchTile {
  const FollowersSeeSavedRecipesSwitch({
    Key? key,
    required bool value,
    required void Function(bool p1)? onChanged,
  }) : super(
          key: key,
          title: 'Followers can see my saved recipes',
          value: value,
          onChanged: onChanged,
        );
}
