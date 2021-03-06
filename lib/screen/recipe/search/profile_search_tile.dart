import 'package:flutter/material.dart';
import 'package:scratch/screen/recipe/widget/profile_tile.dart';

class ProfileSearchTile extends ProfileTile {
  const ProfileSearchTile({
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
          padding: const EdgeInsets.only(right: 15),
        );
}
