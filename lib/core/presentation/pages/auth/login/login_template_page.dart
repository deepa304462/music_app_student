import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/login_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/signup/create_account_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginTamplatePage extends StatelessWidget {
  const LoginTamplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Hero(
            tag: "logo",
            child: Image.asset(
              "assets/images/music_logo.png",
              height: 52,
              width: 52,
            ),
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              "Skip",
              style: TextStyle(
                color: AppColor.yellow29,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: AppTextStyle.textStylePoppins,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Align(
                child: SvgPicture.asset("assets/svg/singer.svg"),
              ),
              10.h.heightBox,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  color: AppColor.blue224,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    Get.to(CreateAccountPage());
                  },
                  child: Text(
                    "I am New here",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 24,
                      color: AppColor.white255,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              4.h.heightBox,
              SizedBox(
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                        8,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 5,
                          height: 1,
                          color: AppColor.brown2,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        "Or",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleInter,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColor.brown29,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        8,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 5,
                          height: 1,
                          color: AppColor.brown2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(LoginPage());
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 60,
                  width: 294,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: AppColor.blue224,
                    ),
                  ),
                  child: Text(
                    "Login in",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blue224,
                    ),
                  ),
                ),
              ),
              1.h.heightBox,
              Text(
                "Or Continue with",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  color: AppColor.brown29,
                ),
              ),
              6.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    padding: const EdgeInsets.all(3),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white255,
                        border: Border.all(
                          color: AppColor.black74,
                          width: 1,
                        )),
                    child: Image.asset("assets/images/facebook.png"),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white255,
                        border: Border.all(
                          color: AppColor.black74,
                          width: 1,
                        )),
                    child: SvgPicture.asset("assets/svg/google.svg"),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white255,
                        border: Border.all(
                          color: AppColor.black74,
                          width: 1,
                        )),
                    child: SvgPicture.asset("assets/svg/apple.svg"),
                  ),
                ],
              ),
              10.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
