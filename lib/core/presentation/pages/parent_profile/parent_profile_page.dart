import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/parent_profile/controller/parent_profile_controller.dart';
import 'package:music_app_student/core/presentation/widgets/text_form_field_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ParentProfilePage extends StatelessWidget {
  ParentProfilePage({super.key});
  final controller = Get.put(ParentProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ParentProfileController>(
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
                    controller: controller.parentNameController,
                    hintText: "Parent Name",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.parentEmailController,
                    hintText: "Parent Email id",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.parentPhoneNumberController,
                    hintText: "Parent Phone Number",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.parentPhoneNumberController,
                    hintText: "Academic School/College Name",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.parentAddressLineFirstController,
                    hintText: "Address Line 1",
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.parentAddressLineSecondController,
                    hintText: "Address Line 2",
                  ),
                  2.h.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldView(
                          controller: controller.parentPinCodeController,
                          hintText: "Pincode",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView(
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
                          controller: controller.parentStateController,
                          hintText: "State",
                        ),
                      ),
                      4.w.widthBox,
                      Expanded(
                        child: TextFormFieldView(
                          controller: controller.parentCountryController,
                          hintText: "Country",
                        ),
                      )
                    ],
                  ),
                  2.h.heightBox,
                  TextFormFieldView(
                    controller: controller.parentDobController,
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
                    controller: controller.parentDojoiningController,
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
                      // log(controller.nameController.toString());
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
