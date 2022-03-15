import 'package:flutter/material.dart';

import 'widget/other_user_profile_avatar.dart';
import 'widget/other_user_profile_background_thumbnail.dart';
import 'widget/other_user_profile_followers_text.dart';
import 'widget/other_user_profile_name_text.dart';
import 'widget/other_user_profile_recipes_text.dart';

class OtherUserProfileTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String thumbnail;
  final String profileImg;
  final String chefName;
  final int totalNumberOfRecipes;
  final int totalNumberOfFollowers;

  const OtherUserProfileTile({
    Key? key,
    required this.onTap,
    required this.thumbnail,
    required this.profileImg,
    required this.chefName,
    required this.totalNumberOfFollowers,
    required this.totalNumberOfRecipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(height: 140),
                OtherUserProfileBackgroundThumbnail(thumbnail: thumbnail),
                OtherUserProfileAvatar(profileImg: profileImg),
              ],
            ),
            const SizedBox(height: 10),
            OtherUserProfileNameText(name: chefName),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OtherUserProfileRecipesText(
                    totalNumberOfRecipes: totalNumberOfRecipes,
                  ),
                  OtherUserProfileFollowersText(
                    totalNumberOfFollowers: totalNumberOfFollowers,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
