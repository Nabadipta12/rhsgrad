import 'package:flutter/material.dart';
import 'package:rhsgrad/core/app_export.dart';
import 'package:rhsgrad/widgets/custom_elevated_button.dart';

class VerifyCelebrationScreen extends StatelessWidget {
  const VerifyCelebrationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 150.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(
                        flex: 41,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorPrimary137x137,
                        height: 137.adaptSize,
                        width: 137.adaptSize,
                      ),
                      Spacer(
                        flex: 58,
                      ),
                      CustomElevatedButton(
                        width: 250.h,
                        text: "You are all set Go",
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1932x430,
                height: 932.v,
                width: 430.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHttpsLottief,
                height: 904.v,
                width: 430.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
