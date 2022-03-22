import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:scratch/model/ingredient.dart';
import 'package:scratch/screen/recipe/cooking_mode/widget/steps_text.dart';
import 'package:scratch/screen/recipe/detailed_recipe/direction_tile.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:video_player/video_player.dart';

import 'widget/cooking_mode_text.dart';
import 'widget/ingredients_botto_sheet_content.dart';
import 'widget/recipe_title_text.dart';
import 'widget/view_ingredients_button.dart';

class CookingModeScreen extends StatefulWidget {
  const CookingModeScreen({Key? key}) : super(key: key);

  @override
  State<CookingModeScreen> createState() => _CookingModeScreenState();
}

class _CookingModeScreenState extends State<CookingModeScreen> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;
  final List<String> _steps = [
    'In a medium bowl, season the chicken with pepper, salt and 1 tablespoon of sesame oil. Mix thoroughly and set aside.',
    'In a separate medium bowl, combine the chicken broth, remaining tablespoon of sesame oil, soy sauce, hoisin sauce, and cornstarch. Mix thoroughly and set aside.',
    'Heat the vegetable oil in a wok or large pan over medium-high heat. Add the chicken and cook until no longer pink inside, 3-4 minutes. Remove the chicken from the pan and set aside.',
    'Add the garlic and ginger to the pan and cook until fragrant.',
    'Add the mushrooms, onions, carrots, and sugar snap peas. Stir fry until the vegetables are tender.',
    'Return the cooked chicken to the pan and add the cooked egg noodles and reserved sauce. Cook for 3 minutes, until everything is well-coated in the sauce.',
    'Serve garnished with scallions.',
    'Enjoy!',
  ];
  final List<Ingredient> _ingredients = [
    const Ingredient(
        thumbnail: 'assets/images/user.png',
        name: '1 lb chicken breast(455 g), sliced'),
    const Ingredient(
        thumbnail: 'assets/images/user.png', name: '1 teaspoon pepper'),
    const Ingredient(
        thumbnail: 'assets/images/user.png', name: '1 teaspoon salt'),
    const Ingredient(
        thumbnail: 'assets/images/user.png',
        name: '2 teaspoons sesame oil, divided'),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '¼ cup chicken broth(60 mL)',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '1 tablespoon soy sauce',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '1 tablespoon hoisin sauce',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '1 teaspoon cornstarch',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '1 tablespoon vegetable oil',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '2 cloves garlic, minced',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '1 tablespoon minced fresh ginger',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '½ cup shiitake mushroom, sliced',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '½ cup onion, sliced',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '½ cup carrot(61 g), sliced',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '½ cup sugar snap peas(49 g), halved',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '4 servings cooked egg noodles',
    ),
    const Ingredient(
      thumbnail: 'assets/images/user.png',
      name: '1 tablespoon scallions, chopped, for garnish',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://vid.tasty.co/output/32118/mp4_640x640/1495125380');

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoInitialize: true,
      looping: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CookingModeText(),
          const SizedBox(height: 20),
          const RecipeTitleText(title: 'Chicken Lo Mein'),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide(color: CustomColor.dividerColor, width: 2),
              ),
            ),
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Chewie(controller: _chewieController),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const StepsText(),
                      ViewIngredientsButton(
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10))),
                            context: context,
                            builder: (BuildContext ctx) {
                              return IngredientsBottomSheetContent(
                                onPressed: () =>
                                    Navigator.of(context).pop(true),
                                ingredients: _ingredients,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    itemCount: _steps.length,
                    shrinkWrap: true,
                    primary: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      String direction = _steps[index];

                      return DirectionTile(
                        number: index + 1,
                        direction: direction,
                        padding: const EdgeInsets.only(bottom: 10),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
