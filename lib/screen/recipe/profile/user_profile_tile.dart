import 'package:flutter/material.dart';
import 'package:scratch/screen/recipe/widget/profile_tile.dart';

class UserProfileTile extends ProfileTile {
  const UserProfileTile({
    Key? key,
    required VoidCallback? onTap,
    required String thumbnail,
    required String profileImg,
    required String chefName,
    required int totalNumberOfFollowers,
    required int totalNumberOfRecipes,
    required double width,
  }) : super(
          key: key,
          onTap: onTap,
          thumbnail: thumbnail,
          profileImg: profileImg,
          chefName: chefName,
          totalNumberOfFollowers: totalNumberOfFollowers,
          totalNumberOfRecipes: totalNumberOfRecipes,
          width: width,
        );
}
