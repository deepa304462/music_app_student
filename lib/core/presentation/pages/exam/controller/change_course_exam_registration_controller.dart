import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeCourseExamRegistrationController extends GetxController {
  GlobalKey<FormFieldState> keyForm = GlobalKey<FormFieldState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController currentInstrumentController = TextEditingController();
  TextEditingController currentSkillLevelController = TextEditingController();
  TextEditingController currentGradeController = TextEditingController();
  TextEditingController selectInstrumentController = TextEditingController();
}
