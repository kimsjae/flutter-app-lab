import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_menu_item.dart';

// 레시피 메뉴들의 모임입니다.
class RecipeMenu extends StatelessWidget {
  const RecipeMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RecipeMenuItem(mIcon: Icons.food_bank, text: "ALL"),
        SizedBox(width: 25),
        RecipeMenuItem(mIcon: Icons.emoji_food_beverage, text: "Coffee"),
        SizedBox(width: 25),
        RecipeMenuItem(mIcon: Icons.fastfood, text: "Burger"),
        SizedBox(width: 25),
        RecipeMenuItem(mIcon: Icons.local_pizza, text: "Pizza"),
      ],
    );
  }
}
