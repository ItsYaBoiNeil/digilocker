import 'controller/log_in_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LogInScreen extends GetWidget<LogInController> {
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
                          padding: getPadding(left: 23, right: 23),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgDigilockerlogonotext,
                                    height: getVerticalSize(156),
                                    width: getHorizontalSize(90),
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(top: 40),
                                    child: Text("lbl_loging".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKanitBlack26)),
                                Padding(
                                  padding: getPadding(top: 36),
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Email",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(top: 36),
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Password",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(19),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(top: 17, right: 2)),
                                Padding(
                                    padding: getPadding(top: 15),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray300,
                                        indent: getHorizontalSize(2))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: getHorizontalSize(77),
                                        margin: getMargin(top: 17, right: 49),
                                        child: Text("msg_forgot_password".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtKanitBlack14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.7))))),
                                CustomButton(
                                    height: getVerticalSize(67),
                                    text: "lbl_log_in".tr,
                                    margin: getMargin(left: 2, top: 12),
                                    onTap: () {
                                      navigatetoHome();
                                    }),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          navigatetoSignup();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                top: 23, bottom: 201),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_don_t_have_an_account2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily: 'Kanit',
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.7))),
                                                  TextSpan(
                                                      text: "lbl_signup2".tr,
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
                              ])))
                ]))));
  }

  navigatetoHome() {
    Get.offNamed(
      AppRoutes.homeScreen,
    );
  }

  navigatetoSignup() {
    Get.offNamed(
      AppRoutes.signUpScreen,
    );
  }
}
