import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/profile/controller/profile_controller.dart';
import 'package:music_app_student/core/presentation/widgets/text_form_field_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: controller.formKey,
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
                  SizedBox(
                    height: 115,
                    child: Stack(
                      children: [
                        const Align(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage(
                              "assets/images/profile-1.png",
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
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: AppColor.white255,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  4.h.heightBox,
                  TextFormFieldView(
                    controller: controller.nameController,
                    hintText: "Full Name",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.emailController,
                    hintText: "Username/Email",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.genderController,
                    hintText: "Gender",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.altPhoneNumberController,
                    hintText: "Alternate phone number",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.addressLineFirstController,
                    hintText: "Address Line 1",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.addressLineSecondController,
                    hintText: "Address Line 2",
                  ),
                  2.h.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldView(
                          controller: controller.cityController,
                          hintText: "City",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView(
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
                          controller: controller.stateController,
                          hintText: "State",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView(
                          controller: controller.countryController,
                          hintText: "Country",
                        ),
                      )
                    ],
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.dobController,
                    hintText: "Date Of Birth",
                    suffixIcon: InkWell(
                      onTap: () {},
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
                    hintText: "Instruments",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.white255,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.typeOfSessionController,
                    hintText: "Type of session",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.white255,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.skillLevelController,
                    hintText: "Skill Level",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.white255,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.classFrequencyController,
                    hintText: "Class Frequency",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.white255,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.modelOfClassController,
                    hintText: "Mode of Class",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.white255,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.preferredPaymentScheduleController,
                    hintText: "Preferred Payment schedule",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.white255,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.dojoiningController,
                    hintText: "Date Of joining",
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child:
                            SvgPicture.asset("assets/svg/calender_month.svg"),
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
                      log(controller.nameController.toString());
                    },
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
}
