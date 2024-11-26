import 'dart:io';

import 'package:image_picker/image_picker.dart';

pickImage() async {
  XFile? xFile = await ImagePicker().pickImage(
    source: ImageSource.gallery,
  );

  File image = File(xFile!.path);
  // ignore: unnecessary_null_comparison
  if (image != null) {
    return image;
  }
}
