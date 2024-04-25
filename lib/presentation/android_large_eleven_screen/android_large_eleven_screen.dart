import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class AndroidLargeElevenScreen extends StatelessWidget {
  const AndroidLargeElevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 3.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDownload2,
                height: 37.v,
                width: 47.h,
                alignment: Alignment.centerLeft,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: _buildColumnDownloadT(
                  context,
                  editAddLoan: "      Edit/Add \nKYC Documents",
                ),
              ),
              Spacer(
                flex: 48,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: _buildColumnDownloadT(
                  context,
                  editAddLoan: "         Edit/Add\nLoan Conditions",
                ),
              ),
              Spacer(
                flex: 51,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgDownload2,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 39.v,
          bottom: 17.v,
        ),
      ),
      title: AppbarTitle(
        text: "Verified Documents",
        margin: EdgeInsets.only(
          left: 5.h,
          top: 47.v,
          bottom: 25.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Common widget
  Widget _buildColumnDownloadT(
    BuildContext context, {
    required String editAddLoan,
  }) {
    return Container(
      width: 306.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDownload1,
            height: 43.v,
            width: 46.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 238.h,
              margin: EdgeInsets.only(right: 32.h),
              child: Text(
                editAddLoan,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineLarge!.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          CustomImageView(
            imagePath: ImageConstant.imgDownload1,
            height: 50.v,
            width: 113.h,
          ),
          SizedBox(height: 11.v)
        ],
      ),
    );
  }
}
