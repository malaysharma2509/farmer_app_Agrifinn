import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../android_large_seven_screen/android_large_seven_screen.dart';
import '../../android_largeee_six_screen/android_largeee_six_screen.dart';

class Kycc extends StatelessWidget {
  const Kycc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          GestureDetector(
            onTap: () {
              // Navigate to the AndroidLargeeeSixScreen
              Navigator.pushNamed(context, AppRoutes.androidLargeeeSixScreen);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgDownload1,
              height: 43.v,
              width: 46.h,
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 230.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Text(
              "Edit/Add \nKYC Documents",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the AndroidLargeeeSixScreen
              Navigator.pushNamed(context, AppRoutes.androidLargeeeSixScreen);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgDownload1,
              height: 50.v,
              width: 113.h,
            ),
          ),
        ],
      ),
    );
  }
}
