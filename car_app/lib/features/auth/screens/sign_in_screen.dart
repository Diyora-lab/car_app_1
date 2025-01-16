import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/resource/validators.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/core/theme/app_text_style.dart';
import 'package:car_app/features/auth/sign_in_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final email = "flutter@gmail.com";
  final password = "2025";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                "Sign In",
                style: AppTextStyle.regular.setSize(48),
              ),
              const SizedBox(height: 100),
              Text(
                "EMAIL OR PHONE",
                style: AppTextStyle.regular.setSize(16),
              ),
              TextFormField(
                controller: emailController,
                validator: SignInValidators().getValidators,
                decoration:
                    const InputDecoration(hintText: "Loremipsum@gmail.com"),
              ),
              const SizedBox(height: 20),
              Text(
                "PASSWORD",
                style: AppTextStyle.regular.setSize(16),
              ),
              TextFormField(
                controller: passwordController,
                validator: SignInValidators().getValidators,
                decoration: const InputDecoration(hintText: "********"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Forgot password?",
                style: TextStyle(fontSize: 11),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.signInLogIn,
                ),
                iconAlignment: IconAlignment.start,
                child: const Text(
                  "Log in",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const Text(
                "OR",
                style: TextStyle(fontSize: 16),
              ),
              SignInButton(
                  text: "Continue With Google",
                  image: Image.asset(AppAssets.signInGoogle)),
              const SizedBox(
                height: 13,
              ),
              SignInButton(
                  text: "Continue With Facebook",
                  image: Image.asset(AppAssets.signInFacebook)),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Don't Have an account yet?",
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "Sign Up",
                style: TextStyle(color: Color(0xffFCC21B), fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
