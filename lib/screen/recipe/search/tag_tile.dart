import 'package:flutter/material.dart';

import 'widget/followers_recipes_text.dart';
import 'widget/hash_tag_text.dart';

class TagTile extends StatelessWidget {
  final int totalNumberOfFollowers;
  final int totalNumberOfRecipes;
  final String hashTag;
  final VoidCallback? onTap;

  const TagTile({
    Key? key,
    required this.hashTag,
    required this.totalNumberOfFollowers,
    required this.totalNumberOfRecipes,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HashTagText(hashTag: hashTag),
            const SizedBox(height: 10),
            FollowersRecipesText(
              totalNumberOfFollowers: totalNumberOfFollowers,
              totalNumberOfRecipes: totalNumberOfRecipes,
            ),
          ],
        ),
      ),
    );
  }
}
