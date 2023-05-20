import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParentProfileController extends GetxController {
  GlobalKey<FormFieldState> formKey = GlobalKey<FormFieldState>();

  TextEditingController parentNameController = TextEditingController();
  TextEditingController parentEmailController = TextEditingController();
  TextEditingController parentGenderController = TextEditingController();
  TextEditingController parentPhoneNumberController = TextEditingController();
  TextEditingController parentAddressLineFirstController =
      TextEditingController();
  TextEditingController parentAddressLineSecondController =
      TextEditingController();
  TextEditingController parentCityController = TextEditingController();
  TextEditingController parentPinCodeController = TextEditingController();
  TextEditingController parentDistrictController = TextEditingController();
  TextEditingController parentStateController = TextEditingController();
  TextEditingController parentCountryController = TextEditingController();
  TextEditingController parentDobController = TextEditingController();
  TextEditingController parentInstrumentsController = TextEditingController();
  TextEditingController parentTypeOfSessionController = TextEditingController();
  TextEditingController parentSkillLevelController = TextEditingController();
  TextEditingController parentClassFrequencyController =
      TextEditingController();
  TextEditingController parentModelOfClassController = TextEditingController();
  TextEditingController parentPreferredPaymentScheduleController =
      TextEditingController();
  TextEditingController parentDojoiningController = TextEditingController();
}
