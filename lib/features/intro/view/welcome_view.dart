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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/welcome_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 450.h, 
            left: 0,
            right: 0,
            child: Center(
              child:
           CustomButton(
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
      ),
    );
  }
}
