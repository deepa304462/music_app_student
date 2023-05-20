import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationTemplateController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
  }

  onStatusChange(int value) {
    selectedIndex = value;
    update();
  }
}
