import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class Uploader extends StatefulWidget {
  final File? file;

  Uploader({Key? key, required this.file}) : super(key: key);
  createState() => _UploaderState();

  @override
  _UploaderState createstate() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  final FirebaseStorage _firebaseStorage =
      FirebaseStorage.instanceFor(bucket: 'gs://digilocker-d36d6.appspot.com');

  late UploadTask _uploadTask;
  File file = new File('');

  void _startUpload() {
    String filepath = 'files/${DateTime.now()}.jpg';

    setState(() {
      _uploadTask = _firebaseStorage.ref().child(filepath).putFile(file);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Photo'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                final results = await _uploadTask.whenComplete(() => null);
                if (results != null) {
                  _startUpload();
                }
              },
              child: Text('Upload'),
            ),
          ),
        ],
      ),
    );
  }
}
