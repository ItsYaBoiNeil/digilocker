import 'package:firebase_auth/firebase_auth.dart';
import '../account_screen/widgets/account_item_widget.dart';
import 'controller/account_controller.dart';
import 'models/account_item_model.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/app_bar/appbar_image.dart';
import 'package:digilocker/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountScreen extends GetWidget<AccountController> {
  TextEditingController _detailsTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        appBar: CustomAppBar(
            height: getVerticalSize(92),
            leadingWidth: 228,
            leading: AppbarImage(
                height: getVerticalSize(64),
                width: getHorizontalSize(76),
                imagePath: ImageConstant.imgUntitled1,
                margin: getMargin(right: 152, bottom: 7)),
            title: Container(
                margin: getMargin(left: 5, top: 4),
                decoration: AppDecoration.column8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Title",
                        style: TextStyle(
                          fontSize: 100.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                          height: getVerticalSize(67),
                          width: getHorizontalSize(66),
                          margin: getMargin(right: 157),
                          decoration: BoxDecoration(
                              color: ColorConstant.blueGray100,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(33)))),
                      Padding(
                          padding: getPadding(left: 81),
                          child: Text("lbl_driver_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKanitBlack20)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 81, right: 38, bottom: 1),
                              child: Text("lbl_driver_mail".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtKanitBlack16))),
                    ])),
            actions: [
              AppbarImage(
                  height: getSize(15),
                  width: getSize(15),
                  svgPath: ImageConstant.imgEdit,
                  margin: getMargin(left: 4, top: 24, right: 144, bottom: 31))
            ]),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(
              top: 50,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // add your onPressed function here
                  },
                  child: Text(
                    "all documents",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // add your onPressed function here
                  },
                  child: Text(
                    "all documents",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 36),
                child: TextField(
                  controller: _detailsTextController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: "DETAILS",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(top: 13),
                  child: Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(1),
                      color: ColorConstant.gray300)),
              Spacer(),
              Container(
                  margin: getMargin(left: 24, right: 25),
                  padding: getPadding(left: 25, top: 16, right: 25, bottom: 16),
                  decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder18),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgGroup6892,
                        height: getSize(18),
                        width: getSize(18),
                        margin: getMargin(top: 8, bottom: 8)),
                    GestureDetector(
                        onTap: () {
                          FirebaseAuth.instance.signOut().then((value) {
                            print("Logged Out");
                            navigatetoOnboarding();
                          }).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                          });
                        },
                        child: Padding(
                            padding: getPadding(left: 104, top: 7, right: 122),
                            child: Text("lbl_log_out".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtKanitBlack18Green400)))
                  ]))
            ])),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 28,
            right: 28,
            bottom: 29,
          ),
          decoration: AppDecoration.outlineIndigo507f.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: getVerticalSize(
                  46,
                ),
                width: getHorizontalSize(
                  41,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: getPadding(
                          bottom: 3,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgStore1,
                            onTap: () {
                              navigateToHome();
                            },
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "Home".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKanitBlack12Gray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  42,
                ),
                width: getHorizontalSize(
                  52,
                ),
                margin: getMargin(
                  left: 38,
                  top: 2,
                  bottom: 1,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          bottom: 2,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                            onTap: () {
                              navigateToaddVehicle();
                            },
                            height: getVerticalSize(
                              18,
                            ),
                            width: getHorizontalSize(
                              28,
                            ),
                            margin: getMargin(
                              left: 1,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "Add Vehicles".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtKanitBlack12Gray900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  bottom: 1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  45,
                ),
                width: getHorizontalSize(
                  49,
                ),
                margin: getMargin(
                  left: 36,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          bottom: 3,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgUserGreen400,
                            color: Colors.black,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "Account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKanitBlack12Gray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigatetoOnboarding() {
    Get.offAllNamed(
      AppRoutes.onbordingScreen,
    );
  }

  void navigateToHome() {
    Get.offNamed(
      AppRoutes.homeScreen,
    );
  }

  void navigateToaddVehicle() {
    Get.offNamed(
      AppRoutes.productDetailScreen,
    );
  }
}
