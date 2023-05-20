import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamRegistrationController extends GetxController {
  GlobalKey<FormFieldState> keyForm = GlobalKey<FormFieldState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController instrumentController = TextEditingController();
  TextEditingController skillLevelController = TextEditingController();
  TextEditingController gradeController = TextEditingController();
  TextEditingController panNumberController = TextEditingController();
  TextEditingController musicBoardController = TextEditingController();
}
