import 'package:flutter/material.dart';

import '../widget/direction_tile.dart';

class DetailedDirectionTile extends DirectionTile {
  const DetailedDirectionTile({
    Key? key,
    required int number,
    required String direction,
  }) : super(
          key: key,
          number: number,
          direction: direction,
        );
}
