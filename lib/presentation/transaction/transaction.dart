import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController lenderNameController = TextEditingController();
  final TextEditingController farmerNameController = TextEditingController();
  final TextEditingController installmentAmountController = TextEditingController();
  final TextEditingController installmentDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                SizedBox(height: 11.v),
                _buildTextFormField(
                  controller: lenderNameController,
                  hintText: "Lender's Name",
                ),
                SizedBox(height: 10.v),
                _buildTextFormField(
                  controller: farmerNameController,
                  hintText: "Farmer's Name",
                ),
                SizedBox(height: 10.v),
                _buildTextFormField(
                  controller: installmentAmountController,
                  hintText: "Installment Amount",
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: 10.v),
                _buildTextFormField(
                  controller: installmentDateController,
                  hintText: "Installment Date",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 14.v),
                _buildSubmitButton(context),
                SizedBox(height: 7.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 44.v),
      decoration: AppDecoration.fillLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDownload2,
            height: 56.v,
            width: 57.h,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h, top: 11.v, bottom: 7.v, right: 0.v),
            child: Text(
              "TRANSACTION",
              style: theme.textTheme.headlineLarge,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 39.v),
      child: CustomTextFormField(
        controller: controller,
        hintText: hintText,
        textInputType: textInputType,
        textInputAction: textInputAction,
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
      height: 39.v,
      width: 106.h,
      text: "Submit",
      onPressed: () => _submitForm(context),
      buttonTextStyle: theme.textTheme.titleLarge!,
      alignment: Alignment.centerRight,
    );
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final details = {
        'lenderName': lenderNameController.text,
        'farmerName': farmerNameController.text,
        'installmentAmount': installmentAmountController.text,
        'installmentDate': installmentDateController.text,
      };

      _saveToCollection(details);

      // Optionally, you can navigate to another screen or show a success message here
    }
  }

  void _saveToCollection(details) {
    // Assuming you're using Firebase Firestore for database operations
    FirebaseFirestore.instance.collection('Transaction_Farmer').add(details).then((value) {
      // Data saved successfully
      print("Data saved successfully");
    }).catchError((error) {
      // Error occurred while saving data
      print("Error: $error");
    });
  }
}