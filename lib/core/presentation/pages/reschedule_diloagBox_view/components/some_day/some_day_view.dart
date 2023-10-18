import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/reschedule_diloagBox_view/components/some_day/some_day_controller.dart';
import 'package:music_app_student/core/presentation/widgets/custom_material_button.dart';
import 'package:music_app_student/core/presentation/widgets/custom_text_field.dart';

import '../../../../../../models/get_time_slots_model.dart';
import '../../../../../../models/reschedule_class_model.dart';
import '../../../../../../repository/auth_repository.dart';
import '../../../../../utils/utils.dart';

class SomeDayView extends StatefulWidget {
  SomeDayView({super.key});

  @override
  State<SomeDayView> createState() => _SomeDayViewState();
}

class _SomeDayViewState extends State<SomeDayView> {
  final controller = Get.put(SomeDayController());
  bool _isLoading = true;
  GetTimeSlotsModel? getTimeSlotsModel;
  TimeClasses? selectedTimeSlot;

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
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child:  DropdownButtonFormField<TimeClasses>(
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
                    color: Colors.black,
                  ),
                  hintText: 'Select To Schedule',
                  hintStyle: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                  ), // Background color
                ),
                value: selectedTimeSlot,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 16),
                iconSize: 0,
                elevation: 16,
                onChanged: (TimeClasses? newValue) {
                  setState(() {
                    selectedTimeSlot = newValue;
                    print("selectedTimeSlot!.id");
                    print(selectedTimeSlot!.id);
                    print("selectedTimeSlot!.id");
                  });
                },
                items: getTimeSlotsModel?.classes!
                    .map<DropdownMenuItem<TimeClasses>>((TimeClasses? value) {
                  return DropdownMenuItem<TimeClasses>(
                      value: value, child: Text(value!.time.toString()));
                }).toList(),
                dropdownColor: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(16),
                hint:  Text(
                    "Select To Schedule",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: AppColor.black,
                  ),
                ),
                ),
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
              onPressed: () {
                onTapSubmitForSameDay();
              },
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
  onTapSubmitForSameDay() async {
    setState(() {
      _isLoading = true;
    });
    // Utils.showNonDismissibleLoadingDialog(
    //     context, 'Please wait...', 'Loading...');
    Map<String, dynamic> data = {
      'reason': controller.reasonController.text,
      'time': controller.timeOfClassController.text,
    //todo implement dropdown for time with time slot api
      'rescheduleDate': "",
      'description':controller.descriptionController.text,
    //todo implement class id
      'classes':"",
      "rescheduleOnSameDay": true

    };
    print(data);
    final authRepository = AuthRepository();
    final response = await authRepository.rescheduleClassApi(data);
    RescheduleClassModel rescheduleClassModel =
    RescheduleClassModel.fromJson(response);
    print("registerFormModel.id");
    print(rescheduleClassModel);
    print("registerFormModel.id");
    if (rescheduleClassModel.user != null) {
      Utils.toastMassage("Reschedule successfully");
      setState(() {
        _isLoading = false;
      });
      Navigator.pop(context);
    } else {
      Utils.toastMassage(response!['error']);
      Navigator.pop(context);
      setState(() {
        _isLoading = false;
      });
    }
  }
  void getTimeSlots(String teacherId) async {
    final authRepository = AuthRepository();
    final response = await authRepository.getTimeSlots(teacherId);

    debugPrint(response.toString());
    getTimeSlotsModel = GetTimeSlotsModel.fromJson(response);
    print("response");
    print(response);
    print("response");
    setState(() {

      getTimeSlotsModel = GetTimeSlotsModel.fromJson(response);

    });
  }
}
