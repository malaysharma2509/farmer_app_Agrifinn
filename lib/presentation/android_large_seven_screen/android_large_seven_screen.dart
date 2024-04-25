import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  AndroidLargeSevenScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController tenureValueOneController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController interestRateController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 18.v), // Adjusted height
                  _buildLoanConditions(context),
                  SizedBox(height: 23.v),
                  CustomTextFormField( // Adjusted width
                    controller: nameController,
                    hintText: "Farmer’s Name",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 15.v,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField( // Adjusted width
                    controller: amountController,
                    hintText: "Total Amount",
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField( // Adjusted width
                    controller: tenureValueOneController,
                    hintText: "Tenure",
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField( // Adjusted width
                    controller: startDateController,
                    hintText: "Start Date",
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField( // Adjusted width
                    controller: endDateController,
                    hintText: "End Date",
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField( // Adjusted width
                    controller: interestRateController,
                    hintText: "Interest Rate",
                  ),
                  SizedBox(height: 23.v),
                  SizedBox(
                    width: double.infinity, // Set width to fill available space
                    child: CustomOutlinedButton(
                      text: "Submit",
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoanConditions(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 49.h,
        vertical: 0, // Removed vertical padding
      ),
      decoration: AppDecoration.fillLime800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Loan Conditions",
            style: theme.textTheme.headlineLarge,
          )
        ],
      ),
    );
  }
}
