import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:esame/features/home/viewmodel/recipe_viewmodel.dart';
import 'package:esame/features/home/view/recipe_video_reel.dart';
import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeReelsView extends StatefulWidget {
  const RecipeReelsView({super.key});

  @override
  State<RecipeReelsView> createState() => _RecipeReelsViewState();
}

class _RecipeReelsViewState extends State<RecipeReelsView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<RecipeViewModel>().fetchReels();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Consumer<RecipeViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading && viewModel.reelsRecipes.isEmpty) {
            return const Center(child: CircularProgressIndicator(color: secondary));
          }

          if (viewModel.reelsRecipes.isEmpty) {
            return Center(
              child: Text("No video recipes found.", style: bodyTextStyle.copyWith(color: white)),
            );
          }

          return PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: viewModel.reelsRecipes.length,
            itemBuilder: (context, index) {
              return RecipeVideoReel(recipe: viewModel.reelsRecipes[index]);
            },
          );
        },
      ),
    );
  }
}
