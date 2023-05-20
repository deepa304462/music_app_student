import 'package:flutter/material.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: AppColor.white255,
            borderRadius: BorderRadius.circular(17.95),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "11:00 Am to 12:00 Am",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleInter,
                      fontSize: 13.46,
                      fontWeight: FontWeight.w800,
                      color: AppColor.black29,
                    ),
                  ),
                  Text(
                    "Class Level : Level 8",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 12.56,
                      fontStyle: FontStyle.italic,
                      letterSpacing: -0.21,
                      fontWeight: FontWeight.w500,
                      color: AppColor.black29,
                    ),
                  ),
                  Text(
                    "Total Students : 10 students",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 12.56,
                      fontStyle: FontStyle.italic,
                      letterSpacing: -0.21,
                      fontWeight: FontWeight.w500,
                      color: AppColor.black29,
                    ),
                  ),
                  1.h.heightBox,
                  MaterialButton(
                    color: AppColor.blue224,
                    minWidth: 210,
                    height: 33,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Join Now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 14.36,
                        color: AppColor.white255,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: 81.57,
                  height: 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/guitar.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
