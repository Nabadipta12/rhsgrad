import 'package:flutter/material.dart';
import 'package:rhsgrad/core/app_export.dart';
import 'package:rhsgrad/widgets/app_bar/appbar_title.dart';
import 'package:rhsgrad/widgets/app_bar/appbar_title_image.dart';
import 'package:rhsgrad/widgets/app_bar/custom_app_bar.dart';
import 'package:rhsgrad/widgets/custom_elevated_button.dart';
import 'package:rhsgrad/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewAccountScreen extends StatelessWidget {
  NewAccountScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 24.h, top: 79.v, right: 24.h),
                    child: Column(children: [
                      _buildName(context),
                      SizedBox(height: 27.v),
                      _buildEmail(context),
                      SizedBox(height: 27.v),
                      _buildPassword(context),
                      SizedBox(height: 27.v),
                      _buildConfirmpassword(context),
                      SizedBox(height: 27.v),
                      _buildDateOfBirth(context),
                      SizedBox(height: 67.v),
                      _buildNext(context),
                      SizedBox(height: 5.v)
                    ])))));
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
                  imagePath: ImageConstant.imgEllipse11,
                  margin: EdgeInsets.only(bottom: 27.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 14.h, top: 63.v, right: 366.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              AppbarTitle(
                  text: "Create New Account",
                  margin: EdgeInsets.fromLTRB(85.h, 76.v, 180.h, 12.v))
            ])));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController,
        hintText: "Name",
        hintStyle: CustomTextStyles.bodyLargeOnError,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 25.v, 29.h, 24.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 69.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 26.v, 28.h, 26.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgFloatingicon,
                height: 16.v,
                width: 20.h)),
        prefixConstraints: BoxConstraints(maxHeight: 69.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 24.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgVector, height: 21.v, width: 16.h)),
        prefixConstraints: BoxConstraints(maxHeight: 69.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 23.v, 21.h, 23.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary,
                height: 15.v,
                width: 22.h)),
        suffixConstraints: BoxConstraints(maxHeight: 69.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 23.v));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmpasswordController,
        hintText: "Confirm Password",
        hintStyle: CustomTextStyles.bodyMediumHelveticaNeue,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 24.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgVector, height: 21.v, width: 16.h)),
        prefixConstraints: BoxConstraints(maxHeight: 69.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 23.v, 21.h, 23.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary,
                height: 15.v,
                width: 22.h)),
        suffixConstraints: BoxConstraints(maxHeight: 69.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 25.v));
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthController,
        hintText: "Date of Birth",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(29.h, 24.v, 30.h, 23.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCakeicon,
                height: 22.v,
                width: 18.h)),
        prefixConstraints: BoxConstraints(maxHeight: 69.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 24.v, 22.h, 25.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgBag,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 69.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 23.v));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "Next",
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the userVerifyScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userVerifyScreen);
  }
}
