import 'package:flutter/material.dart';
import 'package:rhsgrad/core/app_export.dart';
import 'package:rhsgrad/widgets/custom_elevated_button.dart';
import 'package:rhsgrad/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileCreationScreen extends StatelessWidget {
  ProfileCreationScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController infoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse13,
                          height: 86.v,
                          width: 430.h),
                      SizedBox(height: 82.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgPfp,
                          height: 170.adaptSize,
                          width: 170.adaptSize),
                      SizedBox(height: 59.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: CustomTextFormField(
                              controller: userNameController,
                              hintText: "Set Username",
                              hintStyle: CustomTextStyles.bodyLargeOnError,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 25.v, 29.h, 24.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgUser,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 69.v))),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: CustomTextFormField(
                              controller: infoController,
                              hintText: "Set Bio",
                              hintStyle: CustomTextStyles.bodyLargeOnError,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 25.v, 29.h, 25.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgInfo,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 167.v),
                              maxLines: 6)),
                      SizedBox(height: 54.v),
                      CustomElevatedButton(
                          text: "Save",
                          margin: EdgeInsets.symmetric(horizontal: 24.h),
                          onPressed: () {
                            onTapSave(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the verifyCelebrationScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verifyCelebrationScreen);
  }
}
