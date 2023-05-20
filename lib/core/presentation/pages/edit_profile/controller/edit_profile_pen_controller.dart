import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilePenController extends GetxController {
  GlobalKey<FormFieldState> formKey = GlobalKey();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController panNoController = TextEditingController();
}
