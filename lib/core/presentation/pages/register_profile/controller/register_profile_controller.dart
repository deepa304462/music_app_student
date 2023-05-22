import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterProfileController extends GetxController {
  GlobalKey<FormFieldState> formKey = GlobalKey<FormFieldState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController altPhoneNumberController = TextEditingController();
  TextEditingController addressLineFirstController = TextEditingController();
  TextEditingController addressLineSecondController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController instrumentsController = TextEditingController();
  TextEditingController typeOfSessionController = TextEditingController();
  TextEditingController skillLevelController = TextEditingController();
  TextEditingController classFrequencyController = TextEditingController();
  TextEditingController modelOfClassController = TextEditingController();
  TextEditingController preferredPaymentScheduleController =
      TextEditingController();
  TextEditingController dojoiningController = TextEditingController();
}
