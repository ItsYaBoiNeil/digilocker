import 'controller/product_detail_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:digilocker/widgets/custom_image.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:digilocker/widgets/uploader.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

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
                    ),
                    GestureDetector(
                      onTap: () {
                        getImage();
                        //_cropImage();
                        //Uploader(file: selectedImage);
                        print("test");
                        //navigateToHome();
                      },
                      child: CustomImageView(
                        svgPath: ImageConstant.imgUpload,
                        onTap: () {
                          getImage();
                          print(selectedImage);
                          _startUpload();
                        },
                        height: getVerticalSize(
                          20,
                        ),
                        width: getHorizontalSize(
                          20,
                        ),
                        margin: getMargin(
                          bottom: 274,
                        ),
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
                    GestureDetector(
                      onTap: () {
                        // Add your onTap logic here
                      },
                      child: CustomImageView(
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
                    )
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
                padding: getPadding(
                  left: 30,
                  top: 14,
                  right: 25,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 16,
                  right: 25,
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
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // add your onPressed function here
                  },
                  child: Text(
                    "Add Vehicle",
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
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

  void navigateToImageSelection() {
    Get.offNamed(
      AppRoutes.homeScreen,
    );
  }

  File? selectedImage;
  CroppedFile? cropped;

  Future getImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    print('test2');
    selectedImage = File(image!.path);
  }

  Future<void> _cropImage() async {
    if (selectedImage != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: selectedImage!.path,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Crop Your Image',
              toolbarColor: Colors.blue,
              toolbarWidgetColor: Colors.blue,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
        ],
      );
    }
  }

  final FirebaseStorage _firebaseStorage =
      FirebaseStorage.instanceFor(bucket: 'gs://digilocker-d36d6.appspot.com');

  late UploadTask _uploadTask;
  File file = new File('');

  void _startUpload() {
    File file = File(selectedImage!.path);
    String filepath = 'files/${DateTime.now()}.jpg';
    _uploadTask = _firebaseStorage.ref().child(filepath).putFile(file);
  }
}
