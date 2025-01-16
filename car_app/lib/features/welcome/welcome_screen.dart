import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/features/auth/screens/sign_in_screen.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.welcomBg),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 250),
                SizedBox(
                  height: 60,
                  child: Image.asset(AppAssets.welcomeLogo),
                ),
                const SizedBox(height: 300),
                Text(
                  "Rent your dream car from the ",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor81,
                  ),
                ),
                Text(
                  "Best Company ",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor81,
                  ),
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.textGetStarted),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 65),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
