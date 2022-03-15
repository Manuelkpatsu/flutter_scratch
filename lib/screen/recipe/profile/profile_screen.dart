import 'package:flutter/material.dart';
import 'package:scratch/model/profile.dart';
import 'package:scratch/model/recipe.dart';
import 'package:scratch/model/recipe_category.dart';
import 'package:scratch/screen/recipe/profile/recipe_category_tile.dart';
import 'package:scratch/screen/recipe/settings/settings_screen.dart';
import 'package:scratch/screen/widget/custom_divider.dart';
import 'package:scratch/theme/custom_color.dart';

import 'other_user_profile_tile.dart';
import 'saved_recipe_tile.dart';
import 'widget/about_chef_text.dart';
import 'widget/edit_profile_button.dart';
import 'widget/my_kitchen_text.dart';
import 'widget/profile_followers_likes_text.dart';
import 'widget/profile_name_text.dart';
import 'widget/profile_photo.dart';
import 'widget/profile_tab_bar.dart';
import 'widget/settings_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
          Text('20'),
          SizedBox(height: 5),
          Text('Recipes'),
        ],
      ),
      Column(
        children: const [
          Text('75'),
          SizedBox(height: 5),
          Text('Saved'),
        ],
      ),
      Column(
        children: const [
          Text('248'),
          SizedBox(height: 5),
          Text('Following'),
        ],
      ),
    ];
    final List<RecipeCategory> _recipeCategories = [
      const RecipeCategory(
        name: 'Sweets',
        thumbnail: 'assets/images/recipe-category/cat-6.png',
      ),
      const RecipeCategory(
        name: 'Italian',
        thumbnail: 'assets/images/recipe-category/cat-5.png',
      ),
      const RecipeCategory(
        name: 'Desserts',
        thumbnail: 'assets/images/recipe-category/cat-4.png',
      ),
      const RecipeCategory(
        name: 'Chocolates',
        thumbnail: 'assets/images/recipe-category/cat-3.png',
      ),
      const RecipeCategory(
        name: 'Soups',
        thumbnail: 'assets/images/recipe-category/cat-2.png',
      ),
      const RecipeCategory(
        name: 'Pasta',
        thumbnail: 'assets/images/recipe-category/cat-1.png',
      ),
    ];
    final List<Recipe> _savedRecipes = [
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

    return Scaffold(
      appBar: AppBar(
        title: const MyKitchenText(),
        centerTitle: false,
        actions: [
          SettingsButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingsScreen()),
            );
          }),
        ],
      ),
      body: Container(
        color: Colors.white,
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
                    const ProfilePhoto(thumbnail: 'assets/images/user.png'),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  ProfileNameText(name: 'Nick Evans'),
                                  AboutChefText(about: 'Potato Master'),
                                ],
                              ),
                              Material(
                                  color: Colors.transparent,
                                  child: EditProfileButton(onPressed: () {})),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const ProfileFollowersLikesText(
                            totalNumberOfFollowers: 584,
                            totalNumberOfLikes: 23400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomDivider(color: CustomColor.dividerColor),
                const SizedBox(height: 10),
                ProfileTabBar(tabController: _tabController, tabs: _tabs),
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

                        return RecipeCategoryTile(
                          onTap: () {},
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
                        childAspectRatio: 3 / 3,
                      ),
                      itemCount: _savedRecipes.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        Recipe savedRecipe = _savedRecipes[index];

                        return SavedRecipeTile(
                          onTap: () {},
                          thumbnail: savedRecipe.thumbnail,
                          name: savedRecipe.name,
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
                          onTap: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}
