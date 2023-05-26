import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/reschedule_diloagBox_view/components/some_day/some_day_controller.dart';
import 'package:music_app_student/core/presentation/widgets/custom_material_button.dart';
import 'package:music_app_student/core/presentation/widgets/custom_text_field.dart';

class SomeDayView extends StatelessWidget {
  SomeDayView({super.key});

  final controller = Get.put(SomeDayController());

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
              controller: controller.timeOfClassController,
              hintText: "Time of Class",
              suffixIcon: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset("assets/svg/watch.svg"),
              ),
            ),
            controller.dropDownFieldBtn(
              onTap: () {
                controller.rescheduleDiloagBox(context: context);
              },
              hintText: "select students",
            ),
            controller.dropDownFieldBtn(
              onTap: () {},
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
