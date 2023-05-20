import 'package:flutter/material.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class EnrolmentProcessPage extends StatelessWidget {
  const EnrolmentProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Image.asset(
          "assets/images/cyan.png",
          height: 100,
          width: 186,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            40.h.heightBox,
            Text(
              "Thanks for Completing the \nEnrolment Process",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 26,
                color: AppColor.blue224,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                letterSpacing: -0.29,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
