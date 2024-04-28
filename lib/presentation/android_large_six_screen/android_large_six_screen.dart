import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/presentation/android_large_six_screen/widgets/bottom_navigation_bar_widget.dart';
import 'package:kartikay_s_application7/widgets/custom_elevated_button.dart';
import '../android_large_four_draweritem/android_large_four_draweritem.dart';
import 'widgets/androidlargesix_item_widget.dart';
import 'package:kartikay_s_application7/core/app_export.dart';
import 'package:kartikay_s_application7/presentation/android_large_eight_screen/android_large_eight_screen.dart';

class AndroidLargeSixScreen extends StatelessWidget {
  AndroidLargeSixScreen({Key? key}) : super(key: key);

  // Define your BottomNavigationBarItem objects here
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.lime50,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTwentyEight(context),
              SizedBox(height: 11.v),
              _buildFiftyThree(context),
              SizedBox(height: 10.v),
              SizedBox(
                height: 587.v,
                width: double.maxFinite,
                child: _buildAndroidLargeSix(context),
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        items: bottomNavItems,
        currentIndex: 0, // Set initial selected index (optional)
        onTap: (index) {
          // Handle navigation based on tapped index (replace with your logic)
          if (index == 0) {
            // Navigate to Home screen
          } else if (index == 1) {
            // Navigate to Search screen
          } else {
            // Navigate to Settings screen
          }
        },
      ),
    );
  }

  Widget _buildTwentyEight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 48.0),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AndroidLargeFourDraweritem()),
              );
            },
            iconSize: 24.0,
          ),
        ),
        SizedBox(width: 10.0),
        Padding(
          padding: EdgeInsets.only(top: 39.0, left: 65),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              color: Colors.lime[800],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              "Dashboard",
              style: theme.textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }







  Widget _buildFiftyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 74.v,
            width: 276.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "Hello! RamPrasad",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: 46.v,
                  width: 276.h,
                  text: "Join Our Farmers Community Today",
                  buttonStyle: CustomButtonStyles.fillErrorContainer,
                  buttonTextStyle: CustomTextStyles.bodyMediumInter,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDownload16,
            height: 32.v,
            width: 31.h,
            margin: EdgeInsets.only(
              top: 31.v,
              bottom: 11.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDownload17,
            height: 36.v,
            width: 34.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 27.v,
              bottom: 11.v,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAndroidLargeSix(BuildContext context) {
    List<String> texts = [
      "Available Lenders",
      "My Lenders",
      "Booking History",
      "Transaction History",
      "Smart Analysis",
      "Verified Document",
    ];

    return Align(
      alignment: Alignment.center,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 174.v,
          crossAxisCount: 2,
          mainAxisSpacing: 1.h,
          crossAxisSpacing: 1.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          // Example routes
          List<String> routes = [
            '/lender_condition_screen',
            '/my_lenders',
            '/page3',
            '/page4',
            '/android_large_eight_screen',
            '/android_large_three_screen',
          ];

          // Example image paths
          List<String> imagePaths = [
            'assets/images/img_download_8.png',
            'assets/images/img_images_3.png',
            'assets/images/img_images_2.png',
            'assets/images/img_download_9.png',
            'assets/images/img_download_11.png',
            'assets/images/img_download_14.png',
          ];

          return Column(
            children: [
              AndroidlargesixItemWidget(
                imagePath: imagePaths[index],
                route: routes[index],
                text: texts[index],
              ),
              //Text("Additional text ${index + 1}"),
            ],
          );
        },
      ),
    );
  }
}