import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/diloag_box.dart/diloag_box.dart';
import 'package:music_app_student/core/presentation/pages/parent_register_profile/controller/parent_register_profile_controller.dart';
import 'package:music_app_student/core/presentation/widgets/text_form_field_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ParentRegisterProfilePage extends StatelessWidget {
  ParentRegisterProfilePage({super.key});
  final controller = Get.put(ParentRegisterProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ParentRegisterProfileController>(
      builder: (controller) => Scaffold(
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },                    controller: controller.parentNameController,
                    hintText: "Parent Name",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentEmailController,
                    hintText: "Parent Email id",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentPhoneNumberController,
                    hintText: "Parent Phone Number",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentPhoneNumberController,
                    hintText: "Academic School/College Name",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentAddressLineFirstController,
                    hintText: "Address Line 1",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentAddressLineSecondController,
                    hintText: "Address Line 2",
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
                          controller: controller.parentPinCodeController,
                          hintText: "Pincode",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView( validator: (value){
                          if (value!.isEmpty) {
                            return 'Please enter your State';
                          }return '';
                        },

                          controller: controller.parentDistrictController,
                          hintText: "District",
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
                          controller: controller.parentStateController,
                          hintText: "State",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView(
                          validator: (value){
                            if (value!.isEmpty) {
                              return 'Please enter your State';
                            }return '';
                          },
                          controller: controller.parentCountryController,
                          hintText: "Country",
                        ),
                      )
                    ],
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentDobController,
                    hintText: "Date Of Birth",
                    suffixIcon: InkWell(
                      onTap: () {
                        DiloagBox.showDatePickerCalender();
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentInstrumentsController,
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentTypeOfSessionController,
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentSkillLevelController,
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentClassFrequencyController,
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentModelOfClassController,
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller:
                        controller.parentPreferredPaymentScheduleController,
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
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter your State';
                      }return '';
                    },
                    controller: controller.parentDojoiningController,
                    hintText: "Date Of joining",
                    suffixIcon: InkWell(
                      onTap: () {
                        DiloagBox.showDatePickerCalender();
                      },
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
                      // log(controller.nameController.toString());
                      Get.toNamed(AppRoutes.scheduleClassesPage);
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
