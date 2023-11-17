import 'package:flutter/material.dart';
import 'package:rhsgrad/core/app_export.dart';
import 'package:rhsgrad/widgets/custom_elevated_button.dart';

class SignUpLoginCreateScreen extends StatelessWidget {
  const SignUpLoginCreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse186x430,
                      height: 86.v,
                      width: 430.h),
                  SizedBox(height: 17.v),
                  Text("RHSGrad", style: theme.textTheme.displayLarge),
                  SizedBox(height: 32.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSchoolIcon,
                      height: 191.adaptSize,
                      width: 191.adaptSize,
                      radius: BorderRadius.circular(95.h)),
                  SizedBox(height: 98.v),
                  CustomElevatedButton(
                      text: "Create a new Account",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      onPressed: () {
                        onTapCreateANewAccount(context);
                      }),
                  SizedBox(height: 30.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Already have an account? ",
                                    style: CustomTextStyles
                                        .bodyLargeErrorContainer),
                                TextSpan(
                                    text: "Login",
                                    style: CustomTextStyles.bodyLargePrimary)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the newAccountScreen when the action is triggered.
  onTapCreateANewAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newAccountScreen);
  }
}
