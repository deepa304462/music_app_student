import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  bool isCheckBtn = false;
  void Function(bool?)? onChanged;
  onChangeStatus(value) {
    isCheckBtn = value;
    update();
  }
}
