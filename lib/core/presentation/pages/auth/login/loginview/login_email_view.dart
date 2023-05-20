import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/loginview/controller/login_view_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginEmailView extends StatelessWidget {
  LoginEmailView({super.key});
  final controller = Get.put(LoginViewController());
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginViewController());
    return SizedBox(
      child: Column(
        children: [
          _textField(
            controller: controller.emailController,
            hintText: "Email Id",
            icon: Icon(
              Icons.email,
              color: AppColor.white255,
            ),
          ),
          4.h.heightBox,
          _textField(
            controller: controller.passwordController,
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: AppColor.white255,
            ),
          ),
        ],
      ),
    );
  }

  Container _textField(
      {TextEditingController? controller, String? hintText, Widget? icon}) {
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
          SizedBox(
            child: icon,
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
                hintText: "$hintText",
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
