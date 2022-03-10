import 'package:flutter/material.dart';
import 'package:scratch/model/tag.dart';

import '../tag_tile.dart';

class TagListView extends StatelessWidget {
  final List<Tag> tags;

  const TagListView({Key? key, required this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: tags.map((tag) {
        return TagTile(
          hashTag: tag.hashTag,
          totalNumberOfFollowers: tag.totalNumberOfFollowers,
          totalNumberOfRecipes: tag.totalNumberOfRecipes,
          onTap: () {},
        );
      }).toList(),
    );
  }
}
