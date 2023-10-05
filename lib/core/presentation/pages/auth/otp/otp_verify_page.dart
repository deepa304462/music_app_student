import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/nav/new_bottom_navigation_bar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'controller/otp_verify_controller.dart';

class OtpVerifyPage extends StatefulWidget {
  String? phone;
  String? otp;
  OtpVerifyPage({this.otp,this.phone,super.key});

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {


  final controller = Get.put(OtpVerifyController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpVerifyController>(
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(right: 16, left: 16, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColor.white255,
                  ),
                ),
                2.h.heightBox,
                Text(
                  "Verify your\nnumber".trim(),
                  style: TextStyle(
                    fontSize: 45.12,
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                8.h.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Enter 4 - digit verification code sent to your\n",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleRobote,
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: "phone number ",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleRobote,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: widget.phone,
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleRobote,
                            fontSize: 14,
                            color: AppColor.blue224,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: "Edit",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleRobote,
                            fontSize: 14,
                            color: AppColor.white255,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                4.h.heightBox,
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 30,
                  ),
                  child: PinCodeTextField(
                    enableActiveFill: true,
                    appContext: context,
                    // controller: controller.otpController,
                    length: 4,
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                    cursorHeight: 18,
                    cursorWidth: 1,
                    cursorColor: AppColor.blue224,
                    textStyle: TextStyle(color: AppColor.white255),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 45,
                      fieldWidth: 45,
                      borderWidth: 1,
                      selectedColor: AppColor.white205,
                      selectedFillColor: Colors.transparent,
                      activeColor: AppColor.white205,
                      activeFillColor: Colors.transparent,
                      inactiveColor: AppColor.white255,
                      inactiveFillColor: Colors.transparent,
                    ),
                  ),
                ),
                2.h.heightBox,
                MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  color: AppColor.blue224,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    Get.to(NewBottomNavigationBar());
                  },
                  child: Text(
                    "Verify",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 24,
                      color: AppColor.white255,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                2.h.heightBox,
                Align(
                  child: Text(
                    "Trouble receiving code ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 14,
                      color: AppColor.white255,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                2.h.heightBox,
                Align(
                  child: Text(
                    "RESEND OTP".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 16,
                      color: AppColor.brown29,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                6.h.heightBox,
                Center(
                  child: Image.asset(
                    "assets/images/cyan.png",
                    width: 186,
                    height: 100,
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
