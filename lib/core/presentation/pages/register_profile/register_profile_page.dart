import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/diloag_box.dart/diloag_box.dart';
import 'package:music_app_student/core/presentation/widgets/text_form_field_view.dart';
import 'package:music_app_student/models/get_instrument_model.dart';
import 'package:music_app_student/models/register_form_model.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../repository/auth_repository.dart';
import 'controller/register_profile_controller.dart';

class RegisterProfilePage extends StatefulWidget {
  RegisterProfilePage({super.key});

  @override
  State<RegisterProfilePage> createState() => _RegisterProfilePageState();
}

class _RegisterProfilePageState extends State<RegisterProfilePage> {
  final controller = Get.put(RegisterProfileController());
  bool _isLoading = false;
  File? pic;
  List<Subjects> allInstrumentList = [];
  List<String> typeOfSession = ['Private Session', 'Group Session'];
  List<String> skillLevel = [
    'Beginner',
    'Intermediate',
    'Advance/Professional'
  ];
  List<String> classFrequency = ['Once a Week', 'Twice a Week'];
  List<String> modeOfClass = ['Online', 'Hybrid', 'From Center'];
  List<String> preferredSchedule = [
    '12 Sessions',
    '24 Sessions',
    '36 Sessions',
    '45 Sessions'
  ];
  String? selectedSession;
  String? selectedSkillLevel;
  String? selectedClassFrequency;
  String? selectedModeOfClass;
  String? selectedPreferredSchedule;
  String selectedInstrument = "instrument";
  final _formKey = GlobalKey<FormState>();
  RegisterFormModel registerFormModel = RegisterFormModel();

  @override
  void initState() {
    getInstruments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterProfileController>(
      builder: (ctx) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  8.h.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColor.white255,
                    ),
                  ),
                  2.h.heightBox,
                  Stack(
                    children: [
                      Align(
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: pic == null
                                  ? Container(
                                height: 120,
                                width: 120,
                                color: Colors.grey.shade800,
                                  child: Icon(Icons.person,color: Colors.white,size: 60,))

                                  : Image.file(
                                      pic!,
                                      fit: BoxFit.cover,
                                      height: 150,
                                      width: 150,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColor.brown29,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16))),
                                      height: 150,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Card(
                                              color: Colors.grey.shade900,
                                              shadowColor: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              elevation: 10,
                                              child: InkWell(
                                                onTap: () async {
                                                  pic =
                                                      await _getImageByCamera();
                                                  if (pic != null) {
                                                    setState(() {});
                                                  }
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 40,
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .camera_alt_rounded,
                                                          size: 30,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
                                                          width: 12,
                                                        ),
                                                        Text(
                                                          "Camera",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Inter',
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Card(
                                              color: Colors.grey.shade900,
                                              shadowColor: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              elevation: 10,
                                              child: InkWell(
                                                onTap: () async {
                                                  pic =
                                                      await _getImageByGallery();
                                                  if (pic != null) {
                                                    setState(() {});
                                                  }
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 40,
                                                  child: const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .camera_alt_rounded,
                                                        size: 30,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Text(
                                                        "Gallery",
                                                        style: TextStyle(
                                                            fontFamily: 'Inter',
                                                            fontSize: 16,
                                                            color:
                                                                Colors.white),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                    ],
                  ),
                  4.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your full name';
                      }return '';
                    },
                    controller: controller.nameController,
                    hintText: "Full Name",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your full Username/Email';
                      }return '';
                    },
                    controller: controller.emailController,
                    hintText: "Username/Email",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your Gender';
                      }return '';
                    },
                    controller: controller.genderController,
                    hintText: "Gender",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your Phone';
                      }return '';
                    },
                    controller: controller.altPhoneNumberController,
                    hintText: "Alternate phone number",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(validator: (value){
                    if (value!.isEmpty) {
                      return 'Please enter your Address Line 1';
                    }return '';
                  },

                    controller: controller.addressLineFirstController,
                    hintText: "Address Line 1",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your Address Line 2';
                      }return '';
                    },
                    controller: controller.addressLineSecondController,
                    hintText: "Address Line 2",
                  ),
                  2.h.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldView(
                          validator: (value){
                            if (value!.isEmpty) {
                              return 'Please enter your City';
                            }return '';
                          },
                          controller: controller.cityController,
                          hintText: "City",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView(
                          validator: (value){
                            if (value!.isEmpty) {
                              return 'Please enter your Pincode';
                            }return '';
                          },
                          controller: controller.pinCodeController,
                          hintText: "Pincode",
                        ),
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldView(
                          validator: (value){
                            if (value!.isEmpty) {
                              return 'Please enter your State';
                            }return '';
                          },
                          controller: controller.stateController,
                          hintText: "State",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView(
                          validator: (value){
                            if (value!.isEmpty) {
                              return 'Please enter your Country';
                            }return '';
                          },
                          controller: controller.countryController,
                          hintText: "Country",
                        ),
                      )
                    ],
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your Date Of Birth';
                      }return '';
                    },
                    controller: controller.dobController,
                    hintText: "Date Of Birth",
                    suffixIcon: InkWell(
                      onTap: () {
                        _selectDobDate();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child:
                            SvgPicture.asset("assets/svg/calender_month.svg"),
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.instrumentsController,
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
                        hintText: 'Type of session',
                        hintStyle: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ), // Background color
                      ),
                      value: selectedSession,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 16),
                      iconSize: 0,
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedSession = newValue;
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                        });
                      },
                      items: typeOfSession
                          .map<DropdownMenuItem<String>>((String? value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value!));
                      }).toList(),
                      dropdownColor: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(16),
                      hint: const Text(
                        "Type of Session",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 16,
                        ),
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
                        hintText: 'Class Frequency',
                        hintStyle: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ), // Background color
                      ),
                      value: selectedClassFrequency,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 16),
                      iconSize: 0,
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedClassFrequency = newValue;
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                        });
                      },
                      items: classFrequency
                          .map<DropdownMenuItem<String>>((String? value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value!));
                      }).toList(),
                      dropdownColor: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(16),
                      hint: const Text(
                        "Class Frequency",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 16),
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
                        hintText: 'Mode of Class',
                        hintStyle: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ), // Background color
                      ),
                      value: selectedModeOfClass,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 16),
                      iconSize: 0,
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedModeOfClass = newValue;
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                        });
                      },
                      items: modeOfClass
                          .map<DropdownMenuItem<String>>((String? value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value!));
                      }).toList(),
                      dropdownColor: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(16),
                      hint: const Text(
                        "Mode of Class",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 16),
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
                        hintText: 'Preferred Payment schedule',
                        hintStyle: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ), // Background color
                      ),
                      value: selectedPreferredSchedule,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 16),
                      iconSize: 0,
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedPreferredSchedule = newValue;
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                        });
                      },
                      items: preferredSchedule
                          .map<DropdownMenuItem<String>>((String? value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value!));
                      }).toList(),
                      dropdownColor: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(16),
                      hint: const Text(
                        "Preferred Payment schedule",
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
                        return 'Please enter your Date Of joining';
                      }return '';
                    },
                    controller: controller.dojoiningController,
                    hintText: "Date Of joining",
                    suffixIcon: InkWell(
                      onTap: () {
                        _selectJoiningDate();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child:
                            SvgPicture.asset("assets/svg/calender_month.svg"),
                      ),
                    ),
                  ),
                  6.h.heightBox,
                  _isLoading ?Center(child: CircularProgressIndicator(),): MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    color: AppColor.blue224,
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      updateRegisterFormDetail();
                      } ,// log(controller.nameController.toString());
                    child: Text(
                      "Register",
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
            ),
          ),
        ),
      ),
    );
  }

  updateRegisterFormDetail() async {
    /*setState(() {
      _isLoading = true;
    });*/
    final authRepository = AuthRepository();
    var data = {
      'name': controller.nameController.text,
      'email': controller.emailController.text,
      'gender': controller.genderController.text,
      'alternateNumber': controller.altPhoneNumberController.text,
      'address1': controller.addressLineFirstController.text,
      'address2': controller.addressLineSecondController.text,
      'city': controller.cityController.text,
      'pincode': controller.pinCodeController.text,
      'state': controller.stateController.text,
      'country': controller.countryController.text,
      'dateOfBirth': controller.dobController.text,
      'instruments': controller.instrumentsController.text,
      'typeOfSession': selectedSession,
      'skillLevel': selectedSkillLevel,
      'classFrequency': selectedClassFrequency,
      'modeOFClass': selectedModeOfClass,
      'prefferedPaymentSchedule': selectedPreferredSchedule,
      'createdAt': controller.dojoiningController.text,
    };

    final response = await authRepository.updateRegisterForm(
      data,
      pic!,
    );
    print(response);
    setState(() {
      _isLoading = false;
    });
    registerFormModel = RegisterFormModel.fromJson(response);
    //Navigator.push(context,MaterialPageRoute(builder: (_)=> ScheduleClassesPage()));

    debugPrint(response.toString());
    setState(() {

    });
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

  onClickTypeOfSession() {
    return ListView.builder(
        itemCount: typeOfSession.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(typeOfSession[index]),
            onTap: () {
              // Handle item tap
              print('Tapped on ${typeOfSession[index]}');
            },
          );
        });
  }

  void _selectDobDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      // Set your desired starting date
      lastDate: DateTime.now(),
      // You can customize date picker appearance here if needed
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.blue, // Set the primary color
            hintColor: Colors.blue, // Set the accent color
            // You can customize other date picker styles here
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != controller.dobController.text) {
      // Update the text field with the selected date
      setState(() {
        controller.dobController.text = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  void _selectJoiningDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      // Set your desired starting date
      lastDate: DateTime.now(),
      // You can customize date picker appearance here if needed
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.blue, // Set the primary color
            hintColor: Colors.blue, // Set the accent color
            // You can customize other date picker styles here
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != controller.dobController.text) {
      // Update the text field with the selected date
      setState(() {
        controller.dojoiningController.text =
            DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  Future<File?> _getImageByCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource
            .camera); // You can also use ImageSource.camera for capturing a new photo.

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      return imageFile;
      // Use the 'imageFile' for uploading or displaying the selected image.
    } else {
      // User canceled the image picker.
      return null;
    }
  }

  Future<File?> _getImageByGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource
            .gallery); // You can also use ImageSource.camera for capturing a new photo.

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      return imageFile;
      // Use the 'imageFile' for uploading or displaying the selected image.
    } else {
      // User canceled the image picker.
      return null;
    }
  }
}
