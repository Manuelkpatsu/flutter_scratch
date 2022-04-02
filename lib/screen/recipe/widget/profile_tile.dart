import 'package:flutter/material.dart';

import 'chef_profile_name_text.dart';
import 'profile_avatar.dart';
import 'profile_background_thumbnail.dart';
import 'profile_followers_text.dart';
import 'profile_recipes_text.dart';

class ProfileTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String thumbnail;
  final String profileImg;
  final String chefName;
  final int totalNumberOfRecipes;
  final int totalNumberOfFollowers;
  final EdgeInsetsGeometry padding;
  final double width;

  const ProfileTile({
    Key? key,
    required this.onTap,
    required this.thumbnail,
    required this.profileImg,
    required this.chefName,
    required this.totalNumberOfFollowers,
    required this.totalNumberOfRecipes,
    required this.width,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(height: 140),
                  ProfileBackgroundThumbnail(thumbnail: thumbnail),
                  ProfileAvatar(profileImg: profileImg),
                ],
              ),
              const SizedBox(height: 10),
              ChefProfileNameText(name: chefName),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileRecipesText(
                      totalNumberOfRecipes: totalNumberOfRecipes,
                    ),
                    ProfileFollowersText(
                      totalNumberOfFollowers: totalNumberOfFollowers,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
