import 'package:flutter/material.dart';
import 'package:scratch/model/profile.dart';
import 'package:scratch/model/recipe.dart';
import 'package:scratch/model/tag.dart';
import 'package:scratch/screen/widget/custom_divider.dart';
import 'package:scratch/theme/custom_color.dart';

import 'heading_text.dart';
import 'recipe_list_view.dart';
import 'search_profile_list_view.dart';
import 'show_all_button.dart';
import 'tag_list_view.dart';

class NonEmptySearchState extends StatelessWidget {
  const NonEmptySearchState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Recipe> _recipes = [
      const Recipe(
        name: 'Banana and Mandarin Buns',
        thumbnail: 'assets/images/recipes/recipe-10.png',
        chefName: 'Manuel Ahuno',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 22,
        numberOfComments: 5,
        createdAt: '4h ago',
        favorite: false,
      ),
      const Recipe(
        name: 'Coconut Pound Cake',
        thumbnail: 'assets/images/recipes/recipe-11.png',
        chefName: 'Max Okrah',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 25,
        numberOfComments: 14,
        createdAt: '3h ago',
        favorite: true,
      ),
      const Recipe(
        name: 'Cardamon Cranberry Pastry',
        thumbnail: 'assets/images/recipes/recipe-12.png',
        chefName: 'Chef Melissa',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 41,
        numberOfComments: 15,
        createdAt: '2h ago',
        favorite: true,
      ),
    ];
    final List<Profile> _profiles = [
      const Profile(
        thumbnail: 'assets/images/recipes/recipe-1.png',
        chefName: 'Manuel Ahuno',
        profileImg: 'assets/images/user.png',
        about: 'Pancake Lover',
        numberOfLikes: 23000,
        numberOfFollowers: 8000,
        numberOfRecipes: 289,
      ),
      const Profile(
        thumbnail: 'assets/images/recipes/recipe-2.png',
        chefName: 'Chef Melissa',
        profileImg: 'assets/images/user.png',
        about: 'Potato Master',
        numberOfLikes: 3000,
        numberOfFollowers: 584,
        numberOfRecipes: 109,
      ),
      const Profile(
        thumbnail: 'assets/images/recipes/recipe-4.png',
        chefName: 'Sweet Adjeley',
        profileImg: 'assets/images/user.png',
        about: 'I love everything food',
        numberOfLikes: 1335000,
        numberOfFollowers: 768000,
        numberOfRecipes: 326,
      ),
    ];

    final List<Tag> _tags = [
      const Tag(
        hashTag: 'sweets',
        totalNumberOfFollowers: 45000,
        totalNumberOfRecipes: 7345,
      ),
      const Tag(
        hashTag: 'sweetsjam',
        totalNumberOfFollowers: 15000,
        totalNumberOfRecipes: 345,
      ),
      const Tag(
        hashTag: 'sweetpancake',
        totalNumberOfFollowers: 8000,
        totalNumberOfRecipes: 4246,
      ),
      const Tag(
        hashTag: 'sweetbrunch',
        totalNumberOfFollowers: 120000,
        totalNumberOfRecipes: 10345,
      ),
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeadingText(heading: 'Recipes'),
                ShowAllButton(total: 200, onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(height: 15),
          RecipeListView(trendingRecipes: _recipes),
          const SizedBox(height: 20),
          const CustomDivider(
            color: CustomColor.dividerColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeadingText(heading: 'Profiles'),
                ShowAllButton(total: 42, onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SearchProfileListView(profiles: _profiles),
          const SizedBox(height: 20),
          const CustomDivider(
            color: CustomColor.dividerColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeadingText(heading: 'Tags'),
                ShowAllButton(total: 20, onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(height: 15),
          TagListView(tags: _tags),
        ],
      ),
    );
  }
}
