import 'controller/product_detail_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductDetailScreen extends GetWidget<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  left: 25,
                  top: 21,
                  right: 25,
                  bottom: 21,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgBackarrow,
                      onTap: () {
                        navigateToHome();
                      },
                      height: getVerticalSize(
                        18,
                      ),
                      width: getHorizontalSize(
                        10,
                      ),
                      margin: getMargin(
                        bottom: 274,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        205,
                      ),
                      margin: getMargin(
                        left: 34,
                        top: 77,
                        bottom: 9,
                      ),
                      child: SmoothIndicator(
                        offset: 0,
                        count: 3,
                        size: Size.zero,
                        effect: ScrollingDotsEffect(
                          spacing: 4,
                          activeDotColor: ColorConstant.green400,
                          dotColor: ColorConstant.gray40001,
                          dotHeight: getVerticalSize(
                            3,
                          ),
                          dotWidth: getHorizontalSize(
                            3,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgUpload,
                      height: getSize(
                        18,
                      ),
                      width: getSize(
                        18,
                      ),
                      margin: getMargin(
                        left: 22,
                        bottom: 274,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 21,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        58,
                      ),
                      width: getHorizontalSize(
                        186,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_vehicle_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKanitBlack24.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.1,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "lbl_make_year".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKanitBlack16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgBookmark1,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 5,
                        bottom: 29,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 29,
                    right: 29,
                  ),
                  child: Text(
                    "lbl_registered".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKanitBlack24.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 33,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray300B2,
                  indent: getHorizontalSize(
                    25,
                  ),
                  endIndent: getHorizontalSize(
                    25,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 14,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_details".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtKanitBlack16Gray900,
                        ),
                        Container(
                          width: getHorizontalSize(
                            70,
                          ),
                          child: Text(
                            "msg_chassis_no_engine".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtKanitBlack13,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowdownGray900,
                      height: getVerticalSize(
                        8,
                      ),
                      width: getHorizontalSize(
                        14,
                      ),
                      margin: getMargin(
                        top: 5,
                        bottom: 86,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray300B2,
                  indent: getHorizontalSize(
                    25,
                  ),
                  endIndent: getHorizontalSize(
                    25,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 16,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_documents".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtKanitBlack16Gray900,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getVerticalSize(
                        14,
                      ),
                      width: getHorizontalSize(
                        8,
                      ),
                      margin: getMargin(
                        top: 2,
                        bottom: 7,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                  bottom: 5,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray300B2,
                  indent: getHorizontalSize(
                    25,
                  ),
                  endIndent: getHorizontalSize(
                    25,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: getVerticalSize(
            67,
          ),
          width: getHorizontalSize(
            364,
          ),
          margin: getMargin(
            left: 25,
            right: 25,
            bottom: 38,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    bottom: 11,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_home".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtJosefinSansRomanRegular14,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 109,
                        ),
                        child: Text(
                          "lbl_courses".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtJosefinSansRomanBold14,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 108,
                        ),
                        child: Text(
                          "lbl_profile".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtJosefinSansRomanRegular14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  67,
                ),
                width: getHorizontalSize(
                  364,
                ),
                text: "lbl_add_vehicle".tr,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToHome() {
    Get.offNamed(
      AppRoutes.homeScreen,
    );
  }
}
