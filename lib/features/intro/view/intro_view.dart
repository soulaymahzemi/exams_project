import 'package:esame/core/widgets/custom_button.dart';
import 'package:esame/features/authentification/view/login_pages.dart';
import 'package:esame/features/intro/view/intro_video_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../viewmodel/intro_viewmodel.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<IntroViewmodel>(context);

    final PageController pageController = PageController();

    return Scaffold(
      body: Column(
        children: [
          // PageView
          Expanded(
            flex: 6,
            child: PageView.builder(
              controller: pageController,
              itemCount: viewModel.onboardingData.length,
              onPageChanged: (index) => viewModel.setPage(index),
              itemBuilder: (context, index) {
                final data = viewModel.onboardingData[index];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data["image"]!),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          // Texte, indicateurs et bouton
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(24.w),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    viewModel.onboardingData[viewModel.currentPage]["title"]!,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    viewModel.onboardingData[viewModel.currentPage]["subtitle"]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  // Points indicateurs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      viewModel.onboardingData.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        width: viewModel.currentPage == index ? 16.w : 12.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: viewModel.currentPage == index
                              ? Colors.orange
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  // Bouton
              CustomButton(
                text: viewModel.isLastPage ? "Get Started" : "Next",
                height: 50,
                borderRadius: 12,
                onPressed: () {
                  if (viewModel.isLastPage) {
                  Navigator.push(
                  context,
                 MaterialPageRoute(
                  builder: (context) => IntroVideoView() ));
                               } 
                             else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }
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
