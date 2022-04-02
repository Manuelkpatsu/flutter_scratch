import 'package:flutter/material.dart';

import '../widget/direction_tile.dart';

class CookingModeDirectionTile extends DirectionTile {
  const CookingModeDirectionTile({
    Key? key,
    required int number,
    required String direction,
  }) : super(
          key: key,
          number: number,
          direction: direction,
          padding: const EdgeInsets.only(bottom: 10),
        );
}
