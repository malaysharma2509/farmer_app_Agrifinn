import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeeeSixScreen extends StatelessWidget {
  AndroidLargeeeSixScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController userNameController = TextEditingController();
  TextEditingController farmerRegistrationController = TextEditingController();
  TextEditingController annualIncomeController = TextEditingController();
  TextEditingController taxIdentificationController = TextEditingController();
  TextEditingController voterIdCardOneController = TextEditingController();
  TextEditingController driversLicenseController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildStackDownloadTwenty(context),
                    _buildUserName(context),
                    SizedBox(height: 15.v), // Reduced space between adjacent text fields
                    _buildFarmerRegistration(context),
                    SizedBox(height: 15.v),
                    _buildAnnualIncome(context),
                    SizedBox(height: 15.v),
                    _buildTaxIdentification(context),
                    SizedBox(height: 15.v),
                    _buildVoterIdCardOne(context),
                    SizedBox(height: 15.v),
                    _buildDriversLicense(context),
                    SizedBox(height: 30.v), // Added some space for the submit button
                    _buildSubmit(context),
                    SizedBox(height: 8.v)
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
  Widget _buildStackDownloadTwenty(BuildContext context) {
    return SizedBox(
      height: 135.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 23.v),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.fillLime800.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload2,
                    height: 56.v,
                    width: 57.h,
                    margin: EdgeInsets.only(top: 22.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 31.v,
                      right: 28.h,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "KYC Documents",
                      style: theme.textTheme.headlineLarge,
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDownload2,
            height: 37.v,
            width: 47.h,
            alignment: Alignment.bottomLeft,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: userNameController,
        hintText: "Username/Institution Name ",
      ),
    );
  }

  /// Section Widget
  Widget _buildFarmerRegistration(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: farmerRegistrationController,
        hintText: "Farmer Registration  Id",
      ),
    );
  }

  /// Section Widget
  Widget _buildAnnualIncome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: annualIncomeController,
        hintText: "Annual Income",
      ),
    );
  }

  /// Section Widget
  Widget _buildTaxIdentification(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: taxIdentificationController,
        hintText: "Tax Identification Number",
        textInputType: TextInputType.number,
      ),
    );
  }

  /// Section Widget
  Widget _buildVoterIdCardOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: voterIdCardOneController,
        hintText: "Voter ID Card",
      ),
    );
  }

  /// Section Widget
  Widget _buildDriversLicense(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: driversLicenseController,
        hintText: "Driver's License",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(right: 21.h),
        child: CustomOutlinedButton(
          width: 106.h,
          text: "Submit",
          buttonStyle: CustomButtonStyles.fillBlack, // Updated button style
          buttonTextStyle: theme.textTheme.titleLarge!,
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}