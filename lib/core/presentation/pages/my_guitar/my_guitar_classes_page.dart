import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/my_guitar/controller/my_guitar_classes_controller.dart';
import 'package:music_app_student/core/presentation/widgets/custom_appbar.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MyGuitarClassesPage extends StatelessWidget {
  MyGuitarClassesPage({super.key});
  final controller = Get.put(MyGuitarClassesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackPressed: () {}),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Get.toNamed(AppRoutes.myGuitarClassDetailPage);
          },
          child: Container(
            height: 184,
            margin: const EdgeInsets.only(bottom: 20, right: 16, left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.9),
              color: AppColor.white255,
            ),
            child: Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/guitar-1.png',
                        height: 88.81,
                        width: 90.9,
                      ),
                      MaterialButton(
                        color: AppColor.blue224,
                        height: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            13.25,
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(AppRoutes.joinClassPage);
                        },
                        child: Text(
                          "Join Online\nClass",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.22,
                            color: AppColor.white255,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Guitar Class",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 24,
                          color: AppColor.yellow29,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.28,
                        ),
                      ),
                      1.h.heightBox,
                      Text(
                        "Mentor Name : Loren ipsum",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          letterSpacing: -0.23,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      0.4.h.heightBox,
                      Text(
                        "Class Timings: 12 PM-3 PM",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          letterSpacing: -0.23,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      1.h.heightBox,
                      SizedBox(
                        width: 210,
                        child: Text(
                          "Your Upcoming class will be on Sunday, on guitar tuning lesson on 12 PM-3 PM.",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            letterSpacing: -0.23,
                            color: AppColor.black.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      SizedBox(
                        width: 210,
                        child: Text(
                          "Current Level: Level 8",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            letterSpacing: -0.23,
                            color: AppColor.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      0.4.h.heightBox,
                      SizedBox(
                        width: 210,
                        child: Text(
                          "Badges Collected: 20 badges",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            letterSpacing: -0.23,
                            color: AppColor.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      1.h.heightBox,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
