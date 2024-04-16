import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kartikay_s_application7/widgets/custom_text_form_field.dart';
import 'package:kartikay_s_application7/core/app_export.dart';
import 'package:kartikay_s_application7/presentation/android_large_six_screen/android_large_six_screen.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  AndroidLargeOneScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _signUp(BuildContext context) async {
    try {
      await FirebaseFirestore.instance.collection('users').add({
        'userName': userNameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'phone': phoneController.text,
        'address': addressController.text,
        'age': int.tryParse(ageController.text) ?? 0,
      });

      // Navigate to the next screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AndroidLargeSixScreen()),
      );
    } catch (e) {
      // Handle sign-up errors
      print('Failed to sign up: $e');
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to sign up')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidLarge1,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 2.h,
                  vertical: 13.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 60.v),
                    _buildUserName(context),
                    SizedBox(height: 24.v),
                    _buildEmail(context),
                    SizedBox(height: 24.v),
                    _buildPassword(context),
                    SizedBox(height: 24.v),
                    _buildPhone(context),
                    SizedBox(height: 24.v),
                    _buildAddress(context),
                    SizedBox(height: 24.v),
                    _buildAge(context),
                    SizedBox(height: 27.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 48.v,
                        width: 72.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () => _signUp(context),
                                child: Container(
                                  height: 48.v,
                                  width: 72.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray90001,
                                    borderRadius: BorderRadius.circular(
                                      36.h,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 13.v),
                                child: Text(
                                  "Next",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 39.h,
        right: 54.h,
      ),
      child: CustomTextFormField(
        controller: userNameController,
        hintText: "Username",
        alignment: Alignment.centerLeft,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 39.h,
        right: 54.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Email id",
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.centerLeft,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 39.h,
        right: 54.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        obscureText: true,
        alignment: Alignment.centerLeft,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 43.h,
        right: 50.h,
      ),
      child: CustomTextFormField(
        controller: phoneController,
        hintText: "Phone No.",
        textInputType: TextInputType.phone,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 46.h,
        right: 47.h,
      ),
      child: CustomTextFormField(
        controller: addressController,
        hintText: "Home Address",
      ),
    );
  }

  /// Section Widget
  Widget _buildAge(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 46.h,
        right: 47.h,
      ),
      child: CustomTextFormField(
        controller: ageController,
        hintText: "Age",
        textInputAction: TextInputAction.done,
      ),
    );
  }
}