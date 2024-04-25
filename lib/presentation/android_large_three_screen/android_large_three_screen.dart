import 'package:kartikay_s_application7/widgets/custom_text_form_field.dart';
import 'package:kartikay_s_application7/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  AndroidLargeThreeScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController adharCardnoController = TextEditingController();
  TextEditingController panCardNoController = TextEditingController();
  TextEditingController farmidcardController = TextEditingController();
  TextEditingController bankAccountNoController = TextEditingController();
  TextEditingController landAreaController = TextEditingController();
  TextEditingController landLocationController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                ImageConstant.imgAndroidLarge,
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
                  horizontal: 10.h,
                  vertical: 51.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 36.v),
                    _buildAdharCardno(context),
                    SizedBox(height: 20.v),
                    _buildPanCardNo(context),
                    SizedBox(height: 20.v),
                    _buildFarmidcard(context),
                    SizedBox(height: 20.v),
                    _buildBankAccountNo(context),
                    SizedBox(height: 20.v),
                    _buildLandArea(context),
                    SizedBox(height: 20.v),
                    _buildLandLocation(context),
                    SizedBox(height: 88.v),
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
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 13.v),
                                child: Text(
                                  "Submit",
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
  Widget _buildAdharCardno(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: adharCardnoController,
        hintText: "Aadhaar Card No.",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 9.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPanCardNo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 47.h,
      ),
      child: CustomTextFormField(
        controller: panCardNoController,
        hintText: "PAN Card No.",
      ),
    );
  }

  /// Section Widget
  Widget _buildFarmidcard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 47.h,
      ),
      child: CustomTextFormField(
        controller: farmidcardController,
        hintText: "Farm ID Card",
      ),
    );
  }

  /// Section Widget
  Widget _buildBankAccountNo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 47.h,
      ),
      child: CustomTextFormField(
        controller: bankAccountNoController,
        hintText: "Bank Account No.",
      ),
    );
  }

  /// Section Widget
  Widget _buildLandArea(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 47.h,
      ),
      child: CustomTextFormField(
        controller: landAreaController,
        hintText: "Land Area (in acres)",
      ),
    );
  }

  /// Section Widget
  Widget _buildLandLocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 47.h,
      ),
      child: CustomTextFormField(
        controller: landLocationController,
        hintText: "Land Location",
      ),
    );
  }
}