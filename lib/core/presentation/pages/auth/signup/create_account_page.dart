import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/auth/otp/otp_verify_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/signup/controller/create_account_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});
  final controller = Get.put(CreateAccountController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountController>(
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(top: 60, right: 16, left: 16),
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
                4.h.heightBox,
                Text(
                  "Create your\nAccount",
                  style: TextStyle(
                    fontSize: 45.12,
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                8.h.heightBox,
                _textField(controller: controller.phoneController),
                6.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: controller.isCheckBtn,
                      activeColor: AppColor.blue224,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      side: BorderSide(
                        color: AppColor.blue224,
                      ),
                      onChanged: controller.onChangeStatus,
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 15,
                        color: AppColor.white255,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
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
                    Get.to(OtpVerifyPage());
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 24,
                      color: AppColor.white255,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                8.h.heightBox,
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColor.white255,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "or continue with",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColor.white255,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColor.white255,
                      ),
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        decoration: BoxDecoration(
                          color: AppColor.white255,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SvgPicture.asset("assets/svg/google.svg"),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 80,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        decoration: BoxDecoration(
                          color: AppColor.white255,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/images/facebook.png"),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        decoration: BoxDecoration(
                          color: AppColor.white255,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SvgPicture.asset("assets/svg/apple.svg"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

  _bottomNavigationBar() {
    return SizedBox(
      height: 90,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Have an account?",
            style: TextStyle(
              color: AppColor.white255,
              fontFamily: AppTextStyle.textStyleMulish,
              fontSize: 16.91,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.loginPage);
            },
            child: Text(
              " Log in",
              style: TextStyle(
                color: AppColor.blue224,
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 16.91,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _textField({TextEditingController? controller}) {
    return Container(
      height: 52.19,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          color: AppColor.white255,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.call,
            color: AppColor.white255,
          ),
          Container(
            height: 20,
            width: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: AppColor.white255,
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: AppColor.white255),
              controller: controller,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                hintText: "Phone Number",
                hintStyle: TextStyle(
                  color: AppColor.white255,
                  fontFamily: AppTextStyle.textStyleRobote,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
