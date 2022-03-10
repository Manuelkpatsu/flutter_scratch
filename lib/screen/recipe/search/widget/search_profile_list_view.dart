import 'package:flutter/material.dart';
import 'package:scratch/model/profile.dart';

import '../profile_tile.dart';

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

          return ProfileTile(
            chefName: profile.chefName,
            thumbnail: profile.thumbnail,
            totalNumberOfFollowers: profile.numberOfFollowers,
            totalNumberOfRecipes: profile.numberOfRecipes,
            profileImg: profile.profileImg,
            onTap: () {},
          );
        },
      ),
    );
  }
}
