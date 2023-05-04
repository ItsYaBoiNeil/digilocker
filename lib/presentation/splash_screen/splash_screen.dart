import 'controller/splash_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.indigo50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 184),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgDigilockerlog,
                          height: getVerticalSize(375),
                          width: getHorizontalSize(414),
                          margin: getMargin(bottom: 5))
                    ]))));
  }
}
