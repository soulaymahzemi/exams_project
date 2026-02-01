import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_style.dart';
import 'package:esame/features/home/viewmodel/recipe_viewmodel.dart';
import 'package:esame/core/widgets/recipe_card.dart';
import 'package:esame/core/widgets/custom_appbar.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const CustomAppBar(
        title: 'My Favorites',
        automaticallyImplyLeading: false,
      ),
      body: Consumer<RecipeViewModel>(
        builder: (context, viewModel, child) {
          final favorites = viewModel.favoriteRecipes;

          if (favorites.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 80.sp,
                    color: empty.withOpacity(0.5),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'No favorites yet',
                    style: bodyTextStyle.copyWith(
                      fontSize: 16.sp,
                      color: empty,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Add recipes to your favorites\nto see them here',
                    textAlign: TextAlign.center,
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      color: empty.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.all(24.w),
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              return RecipeCard(recipe: favorites[index]);
            },
          );
        },
      ),
    );
  }
}
