import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EbookController extends GetxController {
  File? imagePath;

  Future<void> getImageFromGellary() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      imagePath = File(image.path);
    }
    update();
  }
}
