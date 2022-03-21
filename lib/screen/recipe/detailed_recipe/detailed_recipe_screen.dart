import 'package:flutter/material.dart';
import 'package:scratch/model/ingredient.dart';
import 'package:scratch/screen/recipe/detailed_recipe/ingredient_tile.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

import 'direction_tile.dart';
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
          thumbnail: 'assets/images/user.png', name: 'Cooking spray'),
      const Ingredient(
          thumbnail: 'assets/images/user.png', name: '1/2 cup whole milk'),
      const Ingredient(
          thumbnail: 'assets/images/user.png', name: '2 large eggs'),
      const Ingredient(
          thumbnail: 'assets/images/user.png',
          name: '1 tablespoon maple syrup,'),
      const Ingredient(
        thumbnail: 'assets/images/user.png',
        name: '1/2 teaspoon vanilla extract',
      ),
    ];
    final List<String> _directions = [
      'Heat a Belgian waffle iron',
      'Mix the flour, sugar, and baking powder together in a mixing bowl. Stir in 1 cup eggnog, butter, and the egg until well blended. Add more eggnog if needed to make a pourable batter.',
      'Lightly grease or spray the waffle iron with non-stick cooking spray. Pour some batter onto the preheated waffle iron',
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
                    expandedHeight: 400,
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
                          onPressed: () {}, colorChanged: darkAppBarIcon),
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
                                name: 'Engine-Cooked Honey Orange Pancake',
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
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

                    return IngredientTile(
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

                    return DirectionTile(
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
