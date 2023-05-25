import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController reasonController = TextEditingController();
  TextEditingController startDateForLeaveController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  TextEditingController endDateForLeaveController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  List feesPayList = [
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // showDatePickView();
  }

  var dateRange = DateTimeRange(
          start: DateTime.now(),
          end: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 6))
      .obs;
  showDatePickView() async {
    DateTimeRange? picker = await showDateRangePicker(
      context: Get.context!,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year + 20),
      initialDateRange: dateRange.value,
    );
    if (picker != null && picker != dateRange.value) {
      dateRange.value = picker;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
