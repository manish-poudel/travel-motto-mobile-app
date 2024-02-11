import 'package:image_picker/image_picker.dart';

class FileUtils {
  static Future<double> xFileSize(XFile file) async {
    int fileSizeInBytes = await file.length();
    double fileSizeInKB = fileSizeInBytes / 1024;
    return fileSizeInKB;
  }
}
