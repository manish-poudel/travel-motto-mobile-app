import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as io;
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageServices {
  /// The user selects a file, and the task is added to the list.
  Future<UploadTask?> uploadFile(
      String folderName, String fileName, XFile file) async {
    UploadTask uploadTask;

    // Create a Reference to the file
    Reference ref =
        FirebaseStorage.instance.ref().child("$folderName/$fileName.jpg");

    final metadata = SettableMetadata(
      contentType: 'image/jpeg',
      customMetadata: {'picked-file-path': file.path},
    );
    if (kIsWeb) {
      uploadTask = ref.putData(await file.readAsBytes(), metadata);
    } else {
      uploadTask = ref.putFile(io.File(file.path), metadata);
    }
    return Future.value(uploadTask);
  }

  Future<void> deleteFile(String folderName, String fileName) async {
    Reference ref =
        FirebaseStorage.instance.ref().child("$folderName/$fileName.jpg");
    return ref.delete();
  }
}
