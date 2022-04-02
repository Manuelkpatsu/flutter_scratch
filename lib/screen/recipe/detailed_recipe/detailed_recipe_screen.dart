import 'package:flutter/material.dart';
import 'package:scratch/model/ingredient.dart';
import 'package:scratch/screen/recipe/cooking_mode/cooking_mode_screen.dart';
import 'package:scratch/screen/recipe/detailed_recipe/detaile_recipe_ingredient_tile.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

import 'detailed_direction_tile.dart';
import 'widget/additional_info_heading_text.dart';
import 'widget/additional_info_text.dart';
import 'widget/cook_now_button.dart';
import 'widget/expanded_detailed_recipe_name_text.dart';
import 'widget/detailed_recipe_thumbnail.dart';
import 'widget/gallery_grid_view.dart';

class DetailedRecipeScreen extends StatefulWidget {
  const DetailedRecipeScreen({Key? key}) : super(key: key);

  @override
  State<DetailedRecipeScreen> createState() => _DetailedRecipeScreenState();
}

class _DetailedRecipeScreenState extends State<DetailedRecipeScreen> {
  final List<String> _galleryItems = [
    'assets/images/gallery/gallery-1.png',
    'assets/images/gallery/gallery-2.png',
    'assets/images/gallery/gallery-3.png',
    'assets/images/gallery/gallery-4.png',
    'assets/images/gallery/gallery-5.png',
    'assets/images/gallery/gallery-6.png',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      const Text('Ingredients'),
      const Text('How to Cook'),
      const Text('Additional Info'),
    ];
    final List<Ingredient> _ingredients = [
      const Ingredient(
          thumbnail: 'assets/images/ingredients/chicken-breast.jpeg',
          name: '1 lb chicken breast(455 g), sliced'),
      const Ingredient(
          thumbnail: 'assets/images/ingredients/powdered-pepper.jpeg',
          name: '1 teaspoon pepper'),
      const Ingredient(
          thumbnail: 'assets/images/ingredients/salt.jpeg',
          name: '1 teaspoon salt'),
      const Ingredient(
          thumbnail: 'assets/images/ingredients/sesame-oil.jpeg',
          name: '2 teaspoons sesame oil, divided'),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/chicken-broth.jpeg',
        name: '¼ cup chicken broth(60 mL)',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/soy-sauce.jpeg',
        name: '1 tablespoon soy sauce',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/hoisin-sauce.png',
        name: '1 tablespoon hoisin sauce',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/cornstarch.jpeg',
        name: '1 teaspoon cornstarch',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/vegetable-oil.jpeg',
        name: '1 tablespoon vegetable oil',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/minced-garlic.jpeg',
        name: '2 cloves garlic, minced',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/minced-ginger.jpeg',
        name: '1 tablespoon minced fresh ginger',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/shiitake-mushroom.jpeg',
        name: '½ cup shiitake mushroom, sliced',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/onion.jpeg',
        name: '½ cup onion, sliced',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/carrot.jpeg',
        name: '½ cup carrot(61 g), sliced',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/sugar-snap-peas.jpeg',
        name: '½ cup sugar snap peas(49 g), halved',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/egg-noodle.jpeg',
        name: '4 servings cooked egg noodles',
      ),
      const Ingredient(
        thumbnail: 'assets/images/ingredients/scallion.jpeg',
        name: '1 tablespoon scallions, chopped, for garnish',
      ),
    ];
    final List<String> _directions = [
      'In a medium bowl, season the chicken with pepper, salt and 1 tablespoon of sesame oil. Mix thoroughly and set aside.',
      'In a separate medium bowl, combine the chicken broth, remaining tablespoon of sesame oil, soy sauce, hoisin sauce, and cornstarch. Mix thoroughly and set aside.',
      'Heat the vegetable oil in a wok or large pan over medium-high heat. Add the chicken and cook until no longer pink inside, 3-4 minutes. Remove the chicken from the pan and set aside.',
      'Add the garlic and ginger to the pan and cook until fragrant.',
      'Add the mushrooms, onions, carrots, and sugar snap peas. Stir fry until the vegetables are tender.',
      'Return the cooked chicken to the pan and add the cooked egg noodles and reserved sauce. Cook for 3 minutes, until everything is well-coated in the sauce.',
      'Serve garnished with scallions.',
      'Enjoy!',
    ];
    final List<String> _nutrients = [
      '222 calories',
      '6.2 g fat',
      '7.2 g carbohydrates',
      '28.6 g protein',
      '68 mg cholesterol',
      '268 mg sodium',
    ];

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverLayoutBuilder(
                builder: (context, constraints) {
                  final darkAppBarIcon = constraints.scrollOffset > 340;

                  return SliverAppBar(
                    expandedHeight: 420,
                    floating: false,
                    pinned: true,
                    elevation: 0.5,
                    iconTheme: IconThemeData(
                      color:
                          darkAppBarIcon ? CustomColor.logoColor : Colors.white,
                    ),
                    actionsIconTheme: IconThemeData(
                      color:
                          darkAppBarIcon ? CustomColor.logoColor : Colors.white,
                    ),
                    actions: [
                      CookNowButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const CookingModeScreen(),
                          ),
                        ),
                        colorChanged: darkAppBarIcon,
                      ),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: const [
                              DetailedRecipeThumbnail(
                                thumbnail: 'assets/images/recipes/recipe-9.png',
                              ),
                              ExpandedDetailedRecipeNameText(
                                name: 'Chicken Lo Mein',
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          GalleryGridView(galleryItems: _galleryItems),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    tabs: _tabs,
                    labelColor: CustomColor.textColor,
                    isScrollable: true,
                    unselectedLabelColor: CustomColor.lightGrayTextColor,
                    unselectedLabelStyle: headingFourStyle.copyWith(
                      color: CustomColor.lightGrayTextColor,
                      fontSize: 14,
                    ),
                    labelStyle: headingFourStyle.copyWith(fontSize: 14),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: CustomColor.primaryColor,
                    indicatorWeight: 3,
                  ),
                ),
              ),
            ];
          },
          body: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: TabBarView(
              children: [
                ListView.builder(
                  itemCount: _ingredients.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    Ingredient ingredient = _ingredients[index];

                    return DetailedRecipeIngredientTile(
                      thumbnail: ingredient.thumbnail,
                      name: ingredient.name,
                    );
                  },
                ),
                ListView.builder(
                  itemCount: _directions.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    String direction = _directions[index];

                    return DetailedDirectionTile(
                      number: index + 1,
                      direction: direction,
                    );
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AdditionalInfoHeadingText(heading: 'Serving Time'),
                          SizedBox(width: 15),
                          Expanded(child: AdditionalInfoText(info: '12 Mins')),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AdditionalInfoHeadingText(
                            heading: 'Nutrition Facts',
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: _nutrients.map((nutrient) {
                                return AdditionalInfoText(info: nutrient);
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AdditionalInfoHeadingText(heading: 'Tags'),
                          SizedBox(width: 15),
                          Expanded(
                            child: AdditionalInfoText(
                              info: 'Sweet, Coconut, Quick, Easy, Homemade',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
