import 'package:flutter/material.dart';
import 'package:scratch/model/profile.dart';
import 'package:scratch/screen/recipe/other_user_profile/other_user_profile_screen.dart';

import '../profile_search_tile.dart';

class SearchProfileListView extends StatelessWidget {
  final List<Profile> profiles;

  const SearchProfileListView({Key? key, required this.profiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 16),
        itemCount: profiles.length,
        itemBuilder: (context, int index) {
          Profile profile = profiles[index];

          return ProfileSearchTile(
            chefName: profile.chefName,
            thumbnail: profile.thumbnail,
            totalNumberOfFollowers: profile.numberOfFollowers,
            totalNumberOfRecipes: profile.numberOfRecipes,
            profileImg: profile.profileImg,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const OtherUserProfileScreen(),
              ),
            ),
          );
        },
      ),
    );
  }
}
