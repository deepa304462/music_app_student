import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/diloag_box.dart/diloag_box.dart';
import 'package:music_app_student/core/presentation/pages/payment/exam_payment_page.dart';
import 'package:music_app_student/core/presentation/widgets/text_form_field_view.dart';
import 'package:music_app_student/models/exam_registration_model.dart';
import 'package:music_app_student/models/get_instrument_model.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../repository/auth_repository.dart';
import 'controller/exam_registration_controller.dart';

class ExamRegistrationPage extends StatefulWidget {
  ExamRegistrationPage({super.key});

  @override
  State<ExamRegistrationPage> createState() => _ExamRegistrationPageState();
}

class _ExamRegistrationPageState extends State<ExamRegistrationPage> {
  final controller = Get.put(ExamRegistrationController());
  ExamRegistrationModel? examRegistrationModel;
  List<Subjects> allInstrumentList = [];
  String selectedInstrument = "instrument";
  List<String> skillLevel = [
    'Beginner',
    'Intermediate',
    'Advance/Professional'
  ];
  List<String> selectMusicBoard = [
    'Board 1',
    'Board 2',
    'Board 3'
  ];
  List<String> gender = [
    'Male',
    'Female',
    'Other'
  ];
  String? selectedSkillLevel;
  String? selectedGender;
  String? selectedMusicBoard;

  @override
  void initState() {
    getInstruments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _appBar(),
              Container(
                margin: const EdgeInsets.only(top: 40, right: 16, left: 16),
                child: Form(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/profile.png",
                        height: 115,
                        width: 115,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Flex(
                          direction: Axis.vertical,
                          children: [
                            4.h.heightBox,
                            TextFormFieldView(
                              validator: (value){
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }return '';
                              },
                              controller: controller.nameController,
                              hintText: "Full Name",
                            ),
                            2.h.heightBox,
                            TextFormFieldView(
                              validator: (value){
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }return '';
                              },
                              controller: controller.emailController,
                              hintText: "Email",
                            ),
                            2.h.heightBox,
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0), // Rounded border
                                    borderSide: BorderSide.none, // No border side
                                  ),
                                  contentPadding:
                                  const EdgeInsets.only(bottom: 8, left: 8),
                                  suffixIcon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  hintText: 'Gender',
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                  ), // Background color
                                ),
                                value: selectedGender,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 16),
                                iconSize: 0,
                                elevation: 16,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedGender = newValue;
                                    // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                                  });
                                },
                                items: gender
                                    .map<DropdownMenuItem<String>>((String? value) {
                                  return DropdownMenuItem<String>(
                                      value: value, child: Text(value!));
                                }).toList(),
                                dropdownColor: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(16),
                                hint: const Text(
                                  "Gender",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            2.h.heightBox,
                            TextFormFieldView(
                              controller: controller.instrumentController,
                              validator: (value){
                                if (value!.isNotEmpty) {
                                  return 'Please choose Instrument';
                                }return '';
                              },
                              hintText: selectedInstrument,
                              suffixIcon: InkWell(
                                onTap: () {
                                  DiloagBox.instrumentDiloagBox(allInstrumentList,
                                          (value) {
                                        debugPrint(value);
                                        setState(() {
                                          selectedInstrument = value;
                                        });
                                      });
                                },
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColor.white255,
                                ),
                              ),
                            ),
                            2.h.heightBox,
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0), // Rounded border
                                    borderSide: BorderSide.none, // No border side
                                  ),
                                  contentPadding:
                                  const EdgeInsets.only(bottom: 8, left: 8),
                                  suffixIcon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  hintText: 'Skill Level',
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                  ), // Background color
                                ),
                                value: selectedSkillLevel,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 16),
                                iconSize: 0,
                                elevation: 16,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedSkillLevel = newValue;
                                    // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                                  });
                                },
                                items: skillLevel
                                    .map<DropdownMenuItem<String>>((String? value) {
                                  return DropdownMenuItem<String>(
                                      value: value, child: Text(value!));
                                }).toList(),
                                dropdownColor: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(16),
                                hint: const Text(
                                  "Skill Level",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            2.h.heightBox,
                            TextFormFieldView(
                              validator: (value){
                                if (value!.isEmpty) {
                                  return 'Please enter your Grade';
                                }return '';
                              },
                              controller: controller.genderController,
                              hintText: "Grade",
                            ),
                            2.h.heightBox,
                            TextFormFieldView(
                              controller: controller.panNumberController,
                              hintText: "PAN Number",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your PAN';
                                }
                                if (!isPanNumberValid(value)) {
                                  return 'Please enter a valid PAN';
                                }
                                return " "; // Return null if the input is valid.
                              },
                            ),
                            2.h.heightBox,
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0), // Rounded border
                                    borderSide: BorderSide.none, // No border side
                                  ),
                                  contentPadding:
                                  const EdgeInsets.only(bottom: 8, left: 8),
                                  suffixIcon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  hintText: 'Select Music board',
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                  ), // Background color
                                ),
                                value: selectedMusicBoard,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 16),
                                iconSize: 0,
                                elevation: 16,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedMusicBoard = newValue;
                                    // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                                  });
                                },
                                items: selectMusicBoard
                                    .map<DropdownMenuItem<String>>((String? value) {
                                  return DropdownMenuItem<String>(
                                      value: value, child: Text(value!));
                                }).toList(),
                                dropdownColor: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(16),
                                hint: const Text(
                                  "Select Music board",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            6.h.heightBox,
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36),
                              ),
                              color: AppColor.blue224,
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {
                                onTapPayNow();
                                // log(controller.nameController.toString());
                              },
                              child: Text(
                                "Pay Now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: AppTextStyle.textStyleMulish,
                                  fontSize: 24,
                                  color: AppColor.white255,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBar() {
    return Container(
      margin: const EdgeInsets.only(top: 50, right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              color: AppColor.white255,
            ),
          ),
          Text(
            "Exam Registration",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppTextStyle.textStyleMulish,
              fontSize: 20,
              color: AppColor.white255,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.28,
            ),
          ),
          const SizedBox()
        ],
      ),
    );
  }

  onTapPayNow() async {
    Map<String, String> data = {
      'name': controller.nameController.text,
      'email':controller.emailController.text,
      "gender":controller.genderController.text,
      "subject":controller.instrumentController.text,
      "skillLevel":controller.skillLevelController.text,
      'grade':controller.gradeController.text,
      'panNumber':controller.panNumberController.text,
      'musicBoard':controller.musicBoardController.text,
    };
    final authRepository = AuthRepository();
    final response = await authRepository.registerForExamApi(data);
    examRegistrationModel = ExamRegistrationModel.fromJson(response);
    Get.to(ExamPaymentPage());
  }



  bool isValidEmail(String email) {
    // Define a regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegExp.hasMatch(email);
  }
  bool isPanNumberValid(String? value) {
    if (value == null) {
      return false;
    }

    final panRegExp = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');
    return panRegExp.hasMatch(value);
  }

  void getInstruments() async {
    final authRepository = AuthRepository();
    final response = await authRepository.allServiceApi();
    debugPrint(response.toString());
    GetInstrumentModel getInstrumentModel =
    GetInstrumentModel.fromJson(response);
    setState(() {
      allInstrumentList = getInstrumentModel.subjects!;
      print(allInstrumentList.length);
    });
  }
}
