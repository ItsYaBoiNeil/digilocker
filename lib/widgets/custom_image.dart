import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'uploader.dart';

class ImageCapture extends StatefulWidget {
  createstate() => _ImageCaptureState();

  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {
  File? selectedImage;
  CroppedFile? cropped;

  Future getImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    print('test2');
    setState(() {
      selectedImage = File(image!.path);
    });
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
      if (croppedFile != null) {
        setState(() {
          cropped = croppedFile;
        });
      }
    }
  }

  Future<void> _uploadImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }
  }

  void _clear() {
    setState(() => selectedImage = null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Select an image from the camera or gallery
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.photo_camera),
              onPressed: () => selectedImage!,
            ),
            IconButton(
              icon: Icon(Icons.photo_library),
              onPressed: () => selectedImage!,
            ),
          ],
        ),
      ),

      // Preview the image and crop it
      body: ListView(
        children: <Widget>[
          if (selectedImage != null) ...[
            selectedImage != null
                ? Image.file(
                    selectedImage!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  )
                : Text('selected image is null'),
            Row(
              children: <Widget>[
                TextButton(
                  child: Icon(Icons.crop),
                  onPressed: _cropImage,
                ),
                TextButton(
                  child: Icon(Icons.refresh),
                  onPressed: _clear,
                ),
              ],
            ),
            Uploader(file: selectedImage)
          ]
        ],
      ),
    );
  }
}
