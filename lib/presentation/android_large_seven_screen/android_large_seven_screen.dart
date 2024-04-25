import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AndroidLargeSevenScreen extends StatelessWidget {
  AndroidLargeSevenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController tenureValueOneController = TextEditingController();

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
                    _buildLoanConditions(context),
                    SizedBox(height: 53.v),
                    _buildAmount(context),
                    SizedBox(height: 53.v),
                    _buildTenureValueOne(context),
                    SizedBox(height: 53.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: _buildRowEndDate(
                        context,
                        endDate: "Start Date",
                      ),
                    ),
                    SizedBox(height: 53.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: _buildRowEndDate(
                        context,
                        endDate: "End Date",
                      ),
                    ),
                    SizedBox(height: 34.v),
                    _buildRowInterestRate(context),
                    SizedBox(height: 35.v),
                    _buildSubmit(context),
                    SizedBox(height: 5.v)
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
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: nameController,
        hintText: "Farmer’s Name",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 15.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoanConditions(BuildContext context) {
    return SizedBox(
      height: 183.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 49.h,
                    vertical: 33.v,
                  ),
                  decoration: AppDecoration.fillLime800.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 5.v),
                      Text(
                        "Loan Conditions",
                        style: theme.textTheme.headlineLarge,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildName(context)
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDownload2,
            height: 37.v,
            width: 47.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 52.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: amountController,
        hintText: "Total Amount",
      ),
    );
  }

  /// Section Widget
  Widget _buildTenureValueOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: CustomTextFormField(
        controller: tenureValueOneController,
        hintText: "Tenure",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowInterestRate(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 21.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder27,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 4.v,
            ),
            child: Text(
              "Interest Rate",
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDownload2,
            height: 37.v,
            width: 36.h,
            margin: EdgeInsets.only(top: 6.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomOutlinedButton(
      width: 106.h,
      text: "Submit",
      margin: EdgeInsets.only(right: 21.h),
      buttonTextStyle: theme.textTheme.titleLarge!,
      alignment: Alignment.centerRight,
    );
  }

  /// Common widget
  Widget _buildRowEndDate(
    BuildContext context, {
    required String endDate,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder27,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              endDate,
              style: theme.textTheme.titleLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCalendar,
            height: 25.v,
            width: 29.h,
            margin: EdgeInsets.only(
              top: 2.v,
              right: 7.h,
            ),
          )
        ],
      ),
    );
  }
}
