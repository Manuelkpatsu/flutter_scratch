import 'package:flutter/material.dart';
import 'package:scratch/screen/recipe/search/widget/profile_search_avatar.dart';

import 'widget/chef_profile_search_name_text.dart';
import 'widget/profile_search_background_thumbnail.dart';
import 'widget/profile_search_followers_text.dart';
import 'widget/profile_search_recipes_text.dart';

class ProfileSearchTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String thumbnail;
  final String profileImg;
  final String chefName;
  final int totalNumberOfRecipes;
  final int totalNumberOfFollowers;

  const ProfileSearchTile({
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
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: onTap,
        child: Ink(
          width: 172,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(height: 140),
                  ProfileSearchBackgroundThumbnail(thumbnail: thumbnail),
                  ProfileSearchAvatar(profileImg: profileImg),
                ],
              ),
              const SizedBox(height: 10),
              ChefProfileSearchNameText(name: chefName),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileSearchRecipesText(
                      totalNumberOfRecipes: totalNumberOfRecipes,
                    ),
                    ProfileSearchFollowersText(
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
