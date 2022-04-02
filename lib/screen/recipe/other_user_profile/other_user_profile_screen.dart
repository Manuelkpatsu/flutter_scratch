import 'package:flutter/material.dart';
import 'package:scratch/model/profile.dart';
import 'package:scratch/model/recipe_category.dart';
import 'package:scratch/screen/widget/custom_divider.dart';
import 'package:scratch/theme/custom_color.dart';

import 'other_user_profile_recipe_category_tile.dart';
import 'other_user_profile_tile.dart';
import 'widget/about_user_text.dart';
import 'widget/follow_user_button.dart';
import 'widget/user_followers_likes_text.dart';
import 'widget/user_profile_name_text.dart';
import 'widget/user_profile_thumbnail.dart';
import 'widget/user_tab_bar.dart';

class OtherUserProfileScreen extends StatefulWidget {
  const OtherUserProfileScreen({Key? key}) : super(key: key);

  @override
  State<OtherUserProfileScreen> createState() => _OtherUserProfileScreenState();
}

class _OtherUserProfileScreenState extends State<OtherUserProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      Column(
        children: const [
          Text('16'),
          SizedBox(height: 5),
          Text('Recipes'),
        ],
      ),
      Column(
        children: const [
          Text('75'),
          SizedBox(height: 5),
          Text('Following'),
        ],
      ),
    ];
    final List<RecipeCategory> _recipeCategories = [
      const RecipeCategory(
        name: 'Noodles',
        thumbnail: 'assets/images/recipe-category/cat-12.png',
      ),
      const RecipeCategory(
        name: 'Dimsum',
        thumbnail: 'assets/images/recipe-category/cat-11.png',
      ),
      const RecipeCategory(
        name: 'Seafood',
        thumbnail: 'assets/images/recipe-category/cat-10.png',
      ),
      const RecipeCategory(
        name: 'Banana',
        thumbnail: 'assets/images/recipe-category/cat-9.png',
      ),
      const RecipeCategory(
        name: 'Sweets',
        thumbnail: 'assets/images/recipe-category/cat-8.png',
      ),
      const RecipeCategory(
        name: 'Vegetables',
        thumbnail: 'assets/images/recipe-category/cat-7.png',
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

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const UserProfileThumbnail(
                        thumbnail: 'assets/images/user.png'),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          UserProfileNameText(name: 'Nick Evans'),
                          AboutUserText(about: 'Potato Master'),
                          SizedBox(height: 10),
                          UserFollowersLikesText(
                            totalNumberOfFollowers: 584,
                            totalNumberOfLikes: 23400,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                FollowUserButton(onPressed: () {}),
                const SizedBox(height: 10),
                const CustomDivider(color: CustomColor.dividerColor),
                const SizedBox(height: 10),
                UserTabBar(tabController: _tabController, tabs: _tabs),
                const CustomDivider(color: CustomColor.dividerColor),
                const SizedBox(height: 20),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        childAspectRatio: 3 / 2.3,
                      ),
                      itemCount: _recipeCategories.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        RecipeCategory recipeCategory =
                            _recipeCategories[index];

                        return OtherUserProfileRecipeCategoryTile(
                          onTap: null,
                          thumbnail: recipeCategory.thumbnail,
                          name: recipeCategory.name,
                        );
                      },
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: _profiles.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        Profile profile = _profiles[index];

                        return OtherUserProfileTile(
                          width: MediaQuery.of(context).size.width,
                          onTap: null,
                          chefName: profile.chefName,
                          thumbnail: profile.thumbnail,
                          profileImg: profile.profileImg,
                          totalNumberOfFollowers: profile.numberOfFollowers,
                          totalNumberOfRecipes: profile.numberOfRecipes,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
