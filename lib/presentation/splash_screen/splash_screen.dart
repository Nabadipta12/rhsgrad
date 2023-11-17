import 'package:flutter/material.dart';
import 'package:rhsgrad/core/app_export.dart';
import 'package:rhsgrad/widgets/custom_text_form_field.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController arrowrightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSocialGraphics,
                  height: 360.v,
                  width: 430.h,
                ),
                SizedBox(height: 100.v),
                Text(
                  "RHSGrad",
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(height: 20.v),
                SizedBox(
                  width: 251.h,
                  child: Text(
                    "The official Alumni App\nof Railway HS School,Alipurduar",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeErrorContainer_1,
                  ),
                ),
                SizedBox(height: 200.v),
                 CustomTextFormField(
                    width: 227.h,
                    controller: arrowrightController,
                    hintText: "Let’s Get Started",
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      padding: EdgeInsets.fromLTRB(14.h, 15.v, 13.h, 12.v),
                      margin: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(
                          21.h,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowright,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 51.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 13.v,
                      right: 30.h,
                      bottom: 13.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlackF,
                    fillColor: theme.colorScheme.primary,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
