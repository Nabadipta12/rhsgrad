import 'package:flutter/material.dart';
import 'package:rhsgrad/core/app_export.dart';
import 'package:rhsgrad/widgets/custom_elevated_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 86.v,
                      width: 430.h),
                  SizedBox(height: 17.v),
                  Text("RHSGrad", style: theme.textTheme.displayLarge),
                  Spacer(flex: 45),
                  SizedBox(
                      width: 251.h,
                      child: Text(
                          "The official Alumni App\nof Railway HS School,Alipurduar",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeErrorContainer_1)),
                  SizedBox(height: 20.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSchoolIcon,
                      height: 191.adaptSize,
                      width: 191.adaptSize,
                      radius: BorderRadius.circular(95.h)),
                  SizedBox(height: 92.v),
                  CustomElevatedButton(
                      height: 51.v,
                      width: 227.h,
                      text: "Let’s Get Started",
                      leftIcon: Container(
                          padding: EdgeInsets.fromLTRB(14.h, 15.v, 13.h, 12.v),
                          margin: EdgeInsets.only(right: 7.h),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer,
                              borderRadius: BorderRadius.circular(21.h)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowright,
                              height: 14.adaptSize,
                              width: 14.adaptSize)),
                      buttonStyle: CustomButtonStyles.outlineBlackF,
                      onPressed: () {
                        onTapLetsGetStarted(context);
                      }),
                  Spacer(flex: 54)
                ]))));
  }

  /// Navigates to the signUpLoginCreateScreen when the action is triggered.
  onTapLetsGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpLoginCreateScreen);
  }
}
