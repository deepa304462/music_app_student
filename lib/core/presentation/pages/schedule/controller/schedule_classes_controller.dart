import 'package:get/get.dart';

class ScheduleClassesController extends GetxController {
  String dayDropdownvalue = 'Tuesday';
  String timeDropdownvalue = '12:00 to 13:00';
  String dayDropdownvalue_2 = 'Tuesday';
  String timeDropdownvalue_3 = '12:00 to 13:00';

  // List of items in our dropdown menu
  var daysItems = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  onChangeDayItem(dynamic value) {
    dayDropdownvalue = value;
    update();
  }

  var timeItems = [
    '12:00 to 13:00',
    '13:00 to 14:00',
    '14:00 to 15:00',
    '15:00 to 16:00',
    '16:00 to 17:00',
    '17:00 to 18:00',
    '18:00 to 19:00',
  ];
  onChangeTimeItem(dynamic value) {
    timeDropdownvalue = value;
    update();
  }

  var daysItems_2 = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  onChangeDayItem_2(dynamic value) {
    dayDropdownvalue_2 = value;
    update();
  }

  var timeItems_3 = [
    '12:00 to 13:00',
    '13:00 to 14:00',
    '14:00 to 15:00',
    '15:00 to 16:00',
    '16:00 to 17:00',
    '17:00 to 18:00',
    '18:00 to 19:00',
  ];
  onChangeTimeItem_3(dynamic value) {
    timeDropdownvalue_3 = value;
    update();
  }
}
