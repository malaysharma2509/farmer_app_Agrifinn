import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';

class AndroidLargeOneTwoScreen extends StatelessWidget {
  const AndroidLargeOneTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidLarge2,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 93.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.v),
                CustomImageView(
                  imagePath: ImageConstant.img60c0e28575cd7c2,
                  height: 348.v,
                  width: 360.h,
                  radius: BorderRadius.circular(
                    65.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
