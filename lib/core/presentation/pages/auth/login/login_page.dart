import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/controller/login_controller.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/loginview/login_email_view.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/loginview/login_mobile_view.dart';
import 'package:music_app_student/core/presentation/pages/auth/otp/otp_verify_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(LoginController());
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60, right: 16, left: 16),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/cyan.png",
                        height: 100,
                        width: 186,
                      ),
                    ),
                    Container(
                      height: 54,
                      margin: const EdgeInsets.symmetric(vertical: 60),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: AppColor.blue224.withAlpha(30),
                      ),
                      child: TabBar(
                        onTap: controller.onSelectedStatus,
                        overlayColor:
                            const MaterialStatePropertyAll(Colors.transparent),
                        controller: controller.tabController,
                        indicator: BoxDecoration(
                          color: AppColor.white255,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: AppColor.blue224,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        tabs: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                              color: AppColor.blue224,
                              fontFamily: AppTextStyle.textStyleRobote,
                              fontSize: 16.64,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                              color: AppColor.blue224,
                              fontFamily: AppTextStyle.textStyleRobote,
                              fontSize: 16.64,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: controller.selectedIndex == 0 ? 140 : 190,
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller.tabController,
                        children: [
                          LoginMobileView(),
                          LoginEmailView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              8.h.heightBox,
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColor.white255.withOpacity(0.2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or Login with",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white255,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColor.white255.withOpacity(0.2),
                    ),
                  ),
                ],
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
                  InkWell(
                    onTap: () {
                      // Get.to(EnrolmentProcessPage());
                    },
                    child: Container(
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
                  ),
                ],
              ),
              2.h.heightBox,
              _bottomNavigationBar()
            ],
          ),
        ),
      ),
    );
  }

  _bottomNavigationBar() {
    return SizedBox(
      height: 20,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don’t have an account?",
            style: TextStyle(
              color: AppColor.white255,
              fontWeight: FontWeight.w700,
              fontFamily: AppTextStyle.textStyleMulish,
              fontSize: 10.00,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.createAccountPage);
            },
            child: Text(
              " Register",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: AppColor.blue224,
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 10.00,
              ),
            ),
          ),
        ],
      ),
    );
  }



}
