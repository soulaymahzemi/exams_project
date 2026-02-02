import 'package:esame/features/intro/view/intro_view.dart';
import 'package:esame/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 700;

          if (isWide) {
            return Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Image.asset(
                    'assets/images/welcome_image.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SouChef',
                          style: TextStyle(
                            fontSize: 48.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Cook like a pro, anywhere.',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 50.h),
                        CustomButton(
                          text: 'Get Started',
                          width: 200,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const IntroView(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }

          return OrientationBuilder(
            builder: (context, orientation) {
              bool isLandscape = orientation == Orientation.landscape;
              return Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/welcome_image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: isLandscape ? 0.3.sh : 450.h,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: CustomButton(
                        text: 'Get Started',
                        width: 150,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IntroView(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
