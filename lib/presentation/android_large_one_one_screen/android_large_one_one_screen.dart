import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';
import 'package:kartikay_s_application7/presentation/android_large_two_screen/android_large_two_screen.dart'; // Import the screen you want to navigate to
import 'package:kartikay_s_application7/widgets/custom_elevated_button.dart';

class AndroidLargeOneOneScreen extends StatelessWidget {
  const AndroidLargeOneOneScreen({Key? key}) : super(key: key);

  void loginAsExistingUser(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AndroidLargeTwoScreen(), // Navigate to AndroidLargeTwoScreen
      ),
    );
  }

  void signUp(BuildContext context) {
    // Navigate to sign up screen or perform any action you want
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIstockphoto118,
                height: 400.v,
                width: 360.h,
                radius: BorderRadius.circular(
                  65.h,
                ),
              ),
              SizedBox(height: 41.v),
              CustomElevatedButton(
                text: "Login as existing user",
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                buttonStyle: CustomButtonStyles.fillGrayE,
                onPressed: () => loginAsExistingUser(context),
              ),
              SizedBox(height: 20.v),
              Text(
                "or",
                style: CustomTextStyles.headlineLargeInterGray900,
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "Sign up/Create New Account",
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                buttonStyle: CustomButtonStyles.fillBlack,
                onPressed: () => signUp(context),
              ),
              SizedBox(height: 21.v),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot20240315,
                height: 43.v,
                width: 225.h,
                radius: BorderRadius.circular(
                  21.h,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
