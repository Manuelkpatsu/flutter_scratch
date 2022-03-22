import 'package:flutter/material.dart';
import 'package:scratch/model/recipe.dart';
import 'package:scratch/model/recipe_category.dart';
import 'package:scratch/screen/recipe/cooking_mode/cooking_mode_screen.dart';
import 'package:scratch/screen/recipe/detailed_recipe/detailed_recipe_screen.dart';
import 'package:scratch/screen/recipe/recipes/recipe_tile.dart';

import 'widgets/add_new_recipe_button.dart';
import 'widgets/my_recipes_text.dart';
import 'widgets/recipe_categories_dropdown.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  RecipeCategory _selectedCategory = const RecipeCategory(
    name: 'Sweets',
    thumbnail: 'assets/images/recipe-category/cat-6.png',
  );

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
  final List<Recipe> _recipes = [
    const Recipe(
      name: 'Cooked Coconut Mussels',
      thumbnail: 'assets/images/recipes/recipe-5.png',
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
      name: 'Banana and Mandarin Buns',
      thumbnail: 'assets/images/recipes/recipe-6.png',
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
      name: 'Fried Salty & Sour Snapper',
      thumbnail: 'assets/images/recipes/recipe-7.png',
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
      name: 'Tenderized Hazelnut Pheasant',
      thumbnail: 'assets/images/recipes/recipe-8.png',
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyRecipesText(),
                    AddNewRecipeButton(onPressed: () {})
                  ],
                ),
              ),
              const SizedBox(height: 20),
              RecipeCategoriesDropdown(
                value: _selectedCategory,
                recipeCategories: _recipeCategories,
                onChanged: (newValue) {
                  setState(() {
                    _selectedCategory = newValue;
                  });
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _recipes.length,
              itemBuilder: (context, index) {
                Recipe recipe = _recipes[index];

                return RecipeTile(
                  thumbnail: recipe.thumbnail,
                  name: recipe.name,
                  duration: recipe.cookingDuration,
                  totalNumberOfIngredients: recipe.totalNumberOfIngredients,
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const DetailedRecipeScreen(),
                    ),
                  ),
                  onWatchCookingPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const CookingModeScreen(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
