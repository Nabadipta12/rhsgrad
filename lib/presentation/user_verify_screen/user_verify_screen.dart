import 'package:flutter/material.dart';
import 'package:rhsgrad/core/app_export.dart';
import 'package:rhsgrad/widgets/app_bar/appbar_title.dart';
import 'package:rhsgrad/widgets/app_bar/appbar_title_image.dart';
import 'package:rhsgrad/widgets/app_bar/custom_app_bar.dart';
import 'package:rhsgrad/widgets/custom_elevated_button.dart';
import 'package:rhsgrad/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UserVerifyScreen extends StatelessWidget {
  UserVerifyScreen({Key? key}) : super(key: key);

  TextEditingController passwordBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 78.v),
                child: Column(children: [
                  CustomTextFormField(
                      controller: passwordBoxController,
                      hintText: "Pass out Year",
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(28.h, 25.v, 30.h, 24.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFluentclass20filled,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 69.v),
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 24.v, 22.h, 25.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgBag,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 69.v),
                      contentPadding: EdgeInsets.symmetric(vertical: 23.v)),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(
                      text: "Upload Documents to verify",
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 29.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFlag,
                              height: 16.v,
                              width: 20.h))),
                  Spacer(),
                  SizedBox(height: 73.v),
                  CustomElevatedButton(
                      text: "Next",
                      onPressed: () {
                        onTapNext(context);
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: SizedBox(
            height: 113.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgEllipse12,
                  margin: EdgeInsets.only(bottom: 27.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 14.h, top: 63.v, right: 366.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              AppbarTitle(
                  text: "Upload Documents to Verify",
                  margin: EdgeInsets.fromLTRB(85.h, 77.v, 121.h, 11.v))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the profileCreationScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileCreationScreen);
  }
}
