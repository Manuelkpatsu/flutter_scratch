import 'package:flutter/material.dart';
import 'package:scratch/model/recipe.dart';

import 'widget/home_logo_text.dart';
import 'widget/home_logo_thumbnail.dart';
import 'widget/messages_button.dart';
import 'widget/notifications_button.dart';
import 'widget/recipe_feed_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Recipe> _recipes = [
      const Recipe(
        name: 'Red Wine and Mint Soufflé',
        thumbnail: 'assets/images/recipes/recipe-1.png',
        chefName: 'Manuel Ahuno',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 32,
        numberOfComments: 8,
        createdAt: '2h ago',
        favorite: false,
        cookingDuration: 45,
        totalNumberOfIngredients: 4,
      ),
      const Recipe(
        name: 'White Wine Toffee',
        thumbnail: 'assets/images/recipes/recipe-2.png',
        chefName: 'Manuel Ahuno',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 23,
        numberOfComments: 10,
        createdAt: '2h ago',
        favorite: true,
        cookingDuration: 30,
        totalNumberOfIngredients: 5,
      ),
      const Recipe(
        name: 'Vanilla Pud',
        thumbnail: 'assets/images/recipes/recipe-3.png',
        chefName: 'Yvonne Forkuo',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 45,
        numberOfComments: 20,
        createdAt: '2h ago',
        favorite: true,
        cookingDuration: 30,
        totalNumberOfIngredients: 8,
      ),
      const Recipe(
        name: 'Cured Vegetables & Mutton',
        thumbnail: 'assets/images/recipes/recipe-4.png',
        chefName: 'Sweet Adjeley',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 36,
        numberOfComments: 4,
        createdAt: '2h ago',
        favorite: false,
        cookingDuration: 35,
        totalNumberOfIngredients: 5,
      ),
      const Recipe(
        name: 'Engine-Cooked Honey Orange Pancake',
        thumbnail: 'assets/images/recipes/recipe-9.png',
        chefName: 'Chef Melissa',
        chefThumbnail: 'assets/images/user.png',
        description:
            'Apparently we had reached a great height in the atmosphere, for the sky was bright.',
        numberOfLikes: 104,
        numberOfComments: 30,
        createdAt: '4h ago',
        favorite: true,
        cookingDuration: 45,
        totalNumberOfIngredients: 6,
      ),
    ];
    List<String> _cookbooks = ['Western', 'Quick Lunch', 'Vegies'];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            HomeLogoThumbnail(thumbnail: 'assets/images/logo.png'),
            SizedBox(width: 5),
            HomeLogoText(logo: 'scratch'),
          ],
        ),
        actions: [
          NotificationsButton(onPressed: () {}),
          MessagesButton(onPressed: () {}),
        ],
      ),
      body: RecipeFeedList(recipes: _recipes, cookbooks: _cookbooks),
    );
  }
}
