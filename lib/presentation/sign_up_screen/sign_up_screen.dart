import 'controller/sign_up_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                height: getVerticalSize(861),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgMaskgroup,
                      height: getVerticalSize(861),
                      width: getHorizontalSize(413),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(left: 24, right: 24, bottom: 68),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Text("lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKanitBlack16),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(19),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(top: 17)),
                                Padding(
                                    padding: getPadding(top: 15),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray300)),
                                Container(
                                    width: getHorizontalSize(356),
                                    margin: getMargin(top: 17, right: 7),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_by_continuing_you2".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing:
                                                      getHorizontalSize(0.7))),
                                          TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing:
                                                      getHorizontalSize(0.7))),
                                          TextSpan(
                                              text: "msg_terms_of_service".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.green400,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing:
                                                      getHorizontalSize(0.7))),
                                          TextSpan(
                                              text: "lbl_and".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing:
                                                      getHorizontalSize(0.7))),
                                          TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing:
                                                      getHorizontalSize(0.7))),
                                          TextSpan(
                                              text: "lbl_privacy_policy".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.green400,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing:
                                                      getHorizontalSize(0.7)))
                                        ]),
                                        textAlign: TextAlign.left)),
                                CustomButton(
                                    height: getVerticalSize(67),
                                    text: "lbl_sign_up2".tr,
                                    margin: getMargin(top: 26),
                                    onTap: () {
                                      navigatetoHome();
                                    }),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          navigatetoLogin();
                                        },
                                        child: Padding(
                                            padding: getPadding(top: 23),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_already_have_an2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily: 'Kanit',
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.7))),
                                                  TextSpan(
                                                      text: "lbl_login2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .green400,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily: 'Kanit',
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.7)))
                                                ]),
                                                textAlign: TextAlign.left))))
                              ]))),
                  CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkGreen400,
                      height: getVerticalSize(14),
                      width: getHorizontalSize(19),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(right: 25, bottom: 394)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(left: 24, right: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 32),
                                    child: Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKanitBlack16)),
                                Padding(
                                    padding: getPadding(top: 51),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray300))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(left: 24, right: 24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgDigilockerlogonotext,
                                    height: getVerticalSize(149),
                                    width: getHorizontalSize(90),
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(top: 47),
                                    child: Text("lbl_sign_up".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtKanitBlack26Black900)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_enter_your_credentials".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKanitBlack16)),
                                Padding(
                                    padding: getPadding(top: 36),
                                    child: Text("lbl_username".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKanitBlack16)),
                                Padding(
                                    padding: getPadding(top: 51, bottom: 484),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray300))
                              ])))
                ]))));
  }

  navigatetoHome() {
    Get.offNamed(
      AppRoutes.homeScreen,
    );
  }

  navigatetoLogin() {
    Get.offNamed(
      AppRoutes.logInScreen,
    );
  }
}
