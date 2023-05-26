import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/reschedule_diloagBox_view/components/another_day/controller/anther_day_controller.dart';
import 'package:music_app_student/core/presentation/pages/reschedule_diloagBox_view/components/some_day/some_day_controller.dart';
import 'package:music_app_student/core/presentation/widgets/custom_material_button.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widgets/custom_text_field.dart';

class AnotherDayView extends StatelessWidget {
  AnotherDayView({super.key});

  final controller = Get.put(AnotherDayController());
  final someDayController = Get.put(SomeDayController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            CustomTextField(
              controller: controller.reasonController,
              height: 56,
              hintText: "Reason...",
            ),
            CustomTextField(
              controller: controller.dateOfClassController,
              hintText: "Date of class",
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.calendar_month,
                  color: AppColor.black29,
                ),
                onPressed: () {},
              ),
            ),
            CustomTextField(
              controller: controller.rescheduleDateOfClassController,
              hintText: "reschedule Date of class",
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.calendar_month,
                  color: AppColor.black29,
                ),
                onPressed: () {},
              ),
            ),
            controller.dropDownFieldBtn(
              onTap: () {
                someDayController.rescheduleDiloagBox(context: context);
              },
              hintText: "select students",
            ),
            controller.dropDownFieldBtn(
              onTap: () {
                Get.dialog(
                  Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.43),
                    ),
                    child: SizedBox(
                      height: 240,
                      child: Column(
                        children: List.generate(
                          4,
                          (index) => Container(
                            height: 46,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: AppColor.black,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/man-2.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    2.w.widthBox,
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Andy Raj Kapoor",
                                          style: TextStyle(
                                            fontFamily:
                                                AppTextStyle.textStyleMulish,
                                            fontSize: 12.34,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.black29,
                                          ),
                                        ),
                                        Text(
                                          "No. of Teaching Hours: 300",
                                          style: TextStyle(
                                            fontFamily:
                                                AppTextStyle.textStyleMulish,
                                            fontSize: 8.26,
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.black29,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                2.w.widthBox,
                                Text(
                                  "12 BADGES",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStylePoppins,
                                    fontSize: 9.26,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.02,
                                  ),
                                ),
                                Container(
                                  height: 17,
                                  width: 17,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/circle.png"),
                                    ),
                                  ),
                                  child: const Text("3"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              hintText: "select student",
            ),
            CustomTextField(
              height: 120,
              maxLines: 3,
              controller: controller.descriptionController,
              hintText: "Description for reschedule the class...",
            ),
            CustomMaterialButton(
              height: 60,
              minWidth: double.infinity,
              backgrounColor: AppColor.blue224,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              onPressed: () {},
              title: "Submit",
              color: AppColor.white255,
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontFamily: AppTextStyle.textStyleMulish,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
