import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  AndroidLargeSevenScreen({Key? key}) : super(key: key);

  final _firestore = FirebaseFirestore.instance;

  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController tenureValueOneController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController interestRateController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
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
                  SizedBox(height: 18.v),
                  _buildLoanConditions(context),
                  SizedBox(height: 23.v),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: "Farmer's Name",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 15.v,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField(
                    controller: amountController,
                    hintText: "Total Amount",
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField(
                    controller: tenureValueOneController,
                    hintText: "Tenure",
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField(
                    controller: startDateController,
                    hintText: "Start Date",
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField(
                    controller: endDateController,
                    hintText: "End Date",
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField(
                    controller: interestRateController,
                    hintText: "Interest Rate",
                  ),
                  SizedBox(height: 23.v),
                  CustomTextFormField(
                    controller: reasonController,
                    hintText: "Reason for Issuing Loan",
                  ),
                  SizedBox(height: 23.v),
                  SizedBox(
                    width: double.infinity,
                    child: CustomOutlinedButton(
                      text: "Submit",
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                      alignment: Alignment.center,
                      onPressed: () {
                        _submitFormData();
                      },
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
        vertical: 0,
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

  void _submitFormData() {
    Map<String, dynamic> formData = {
      'farmer_name': nameController.text,
      'total_amount': amountController.text,
      'tenure': tenureValueOneController.text,
      'start_date': startDateController.text,
      'end_date': endDateController.text,
      'interest_rate': interestRateController.text,
      'reason': reasonController.text,
    };

    _firestore.collection('farmer_conditions').add(formData).then((_) {
      print("Data sent successfully");
      nameController.clear();
      amountController.clear();
      tenureValueOneController.clear();
      startDateController.clear();
      endDateController.clear();
      interestRateController.clear();
      reasonController.clear();
    }).catchError((error) {
      print('Error submitting form data: $error');
    });
  }
}