import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeFourDraweritem extends StatelessWidget {
  const AndroidLargeFourDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final drawerWidth = screenWidth / 2; // Set drawer width to half of the screen width

    return Scaffold(
      body: Row(
        children: [
          // Drawer
          SizedBox(
            width: drawerWidth,
            child: Drawer(
              child: Container(
                width: drawerWidth,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 16.v),
                decoration: AppDecoration.fillLime,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img1096181,
                          height: 29.v,
                          width: 35.h,
                          margin: EdgeInsets.only(bottom: 90.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgDownload1,
                          height: 100.v,
                          width: 100.h,
                          radius: BorderRadius.circular(
                            50.h,
                          ),
                          margin: EdgeInsets.only(
                            left: 10.h,
                            top: 19.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot20240316,
                      height: 23.v,
                      width: 96.h,
                    ),
                    SizedBox(height: 40.v),
                    _buildTwenty(
                      context,
                      image: ImageConstant.imgImages1,
                      pendingApprovals: "Contact Details",
                      imagePadding: 4.h,
                      textPadding: 2.h,
                    ),
                    SizedBox(height: 19.v),
                    _buildTwenty(
                      context,
                      image: ImageConstant.imgNotepadIconVector16897435,
                      pendingApprovals: "Pending Approvals",
                      imagePadding: 4.h,
                      textPadding: 2.h,
                    ),
                    SizedBox(height: 19.v),
                    _buildFifteen(
                      context,
                      downloadFour: ImageConstant.imgDownload2,
                      editProfiles: "Current Purchases",
                      imagePadding: 2.h,
                      textPadding: 2.h,
                    ),
                    SizedBox(height: 19.v),
                    _buildRow(
                      ImageConstant.imgDownload3,
                      "Payments",
                    ),
                    SizedBox(height: 19.v),
                    _buildFifteen(
                      context,
                      downloadFour: ImageConstant.imgDownload4,
                      editProfiles: "Edit Profiles",
                      imagePadding: 2.h,
                      textPadding: 2.h,
                    ),
                    SizedBox(height: 19.v),
                    _buildRow(
                      ImageConstant.imgDownload5,
                      "Settings",
                    ),
                    SizedBox(height: 19.v),
                    _buildRow(
                      ImageConstant.imgDownload6,
                      "Helpdesk",
                    ),
                    SizedBox(height: 19.v),
                    _buildTwenty(
                      context,
                      image: ImageConstant.imgDownload7,
                      pendingApprovals: "LogOut",
                      imagePadding: 4.h,
                      textPadding: 2.h,
                    ),
                    SizedBox(height: 19.v),
                  ],
                ),
              ),
            ),
          ),
          // Main content
          Expanded(
            child: Container(
              color: Colors.white, // Replace with your main content
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTwenty(
      BuildContext context, {
        required String image,
        required String pendingApprovals,
        required double imagePadding,
        required double textPadding,
      }) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 4.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(imagePadding),
              child: CustomImageView(
                imagePath: image,
                height: 21.v,
                width: 26.h,
                margin: EdgeInsets.symmetric(vertical: 1.v),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: textPadding),
              child: Text(
                pendingApprovals,
                style: CustomTextStyles.titleLargeInriaSerif.copyWith(
                  color: theme.colorScheme.errorContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFifteen(
      BuildContext context, {
        required String downloadFour,
        required String editProfiles,
        required double imagePadding,
        required double textPadding,
      }) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 3.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(imagePadding),
              child: CustomImageView(
                imagePath: downloadFour,
                height: 30.v,
                width: 33.h,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: textPadding,
                top: 3.v,
                bottom: 3.v,
              ),
              child: Text(
                editProfiles,
                style: CustomTextStyles.titleLargeInriaSerif.copyWith(
                  color: theme.colorScheme.errorContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRow(String imagePath, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: imagePath,
              height: 27.v,
              width: 25.h,
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Text(
                text,
                style: CustomTextStyles.titleLargeInriaSerif,
              ),
            ),
          ],
        ),
      ),
    );
  }
}