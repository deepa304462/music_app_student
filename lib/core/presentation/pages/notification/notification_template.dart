import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/nav/new_bottom_navigation_bar.dart';
import 'package:music_app_student/core/presentation/pages/notification/controller/notification_template_controller.dart';
import 'package:music_app_student/core/presentation/pages/notification/fragment/notification_page.dart';
import 'package:music_app_student/core/presentation/pages/notification/fragment/payment_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationTemplate extends StatelessWidget {
  NotificationTemplate({super.key});
  final controller = Get.put(NotificationTemplateController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationTemplateController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColor.white255,
            ),
          ),
          centerTitle: true,
          title: Text(
            "Notification",
            style: TextStyle(
              fontFamily: AppTextStyle.textStylePoppins,
              fontSize: 20,
              letterSpacing: -0.28,
              fontWeight: FontWeight.w700,
              color: AppColor.white255,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 48,
              width: double.infinity,
              child: TabBar(
                onTap: controller.onStatusChange,
                overlayColor:
                    const MaterialStatePropertyAll(Colors.transparent),
                controller: controller.tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.appThemeColor,
                ),
                tabs: [
                  Container(
                    height: 48,
                    width: 135,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: controller.selectedIndex == 0
                          ? AppColor.blue224
                          : Colors.transparent,
                      border: Border.all(
                        color: controller.selectedIndex == 0
                            ? Colors.transparent
                            : AppColor.white255,
                      ),
                    ),
                    child: Text(
                      "Messages",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: controller.selectedIndex == 0
                            ? AppColor.white255
                            : AppColor.brown29,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 135,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: controller.selectedIndex == 1
                          ? AppColor.blue224
                          : Colors.transparent,
                      border: Border.all(
                        color: controller.selectedIndex == 1
                            ? Colors.transparent
                            : AppColor.white255,
                      ),
                    ),
                    child: Text(
                      "Payment",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: controller.selectedIndex == 1
                            ? AppColor.white255
                            : AppColor.brown29,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            1.h.heightBox,
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  NotificationPage(),
                  PaymentPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
