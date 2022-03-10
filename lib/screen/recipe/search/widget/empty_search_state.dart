import 'package:flutter/material.dart';
import 'package:scratch/model/recipe.dart';
import 'package:scratch/screen/widget/custom_divider.dart';
import 'package:scratch/theme/custom_color.dart';

import 'heading_text.dart';
import 'ingrediant_tab_bar.dart';
import 'tab_bar_list_view.dart';
import 'recipe_list_view.dart';

class EmptySearchState extends StatefulWidget {
  const EmptySearchState({Key? key}) : super(key: key);

  @override
  State<EmptySearchState> createState() => _EmptySearchStateState();
}

class _EmptySearchStateState extends State<EmptySearchState>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Recipe> _trendingRecipes = [
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
    final List<Widget> _tabs = [
      const Text('Potato'),
      const Text('Banana'),
      const Text('Tomato'),
      const Text('Pumpkin'),
      const Text('Pepper'),
    ];
    final List<Recipe> _recipes = [
      const Recipe(
        name: 'Tenderized Salty & Sour Potato Beef',
        thumbnail: 'assets/images/recipes/recipe-13.png',
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
        name: 'Sautéed Orange & Mustard Bruschetta',
        thumbnail: 'assets/images/recipes/recipe-14.png',
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
        name: 'Blanched Peppermint Pheasant',
        thumbnail: 'assets/images/recipes/recipe-15.png',
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

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const HeadingText(
            heading: 'Trending Recipes',
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          const SizedBox(height: 20),
          RecipeListView(trendingRecipes: _trendingRecipes),
          const SizedBox(height: 20),
          const CustomDivider(
            color: CustomColor.dividerColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          const SizedBox(height: 15),
          const HeadingText(
            heading: 'What can i make with...',
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          const SizedBox(height: 15),
          IngredientTabBar(tabs: _tabs, tabController: _tabController),
          const SizedBox(height: 15),
          SizedBox(
            height: 200,
            child: TabBarView(
              controller: _tabController,
              children: [
                TabBarListView(recipes: _recipes),
                TabBarListView(recipes: _recipes),
                TabBarListView(recipes: _recipes),
                TabBarListView(recipes: _recipes),
                TabBarListView(recipes: _recipes),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
