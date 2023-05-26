import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';

class EbookController extends GetxController {
  File? imagePath;

  Future<void> getImageFromGellary() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      imagePath = File(image.path);
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nextPage();
  }

  nextPage() {
    Timer(const Duration(seconds: 5), () {
      Get.toNamed(AppRoutes.newBottomNavigationBar);
    });
  }
}
