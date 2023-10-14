import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/policy/terms_condition_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'controller/parent_profile_controller.dart';

class ParentProfilePage extends StatelessWidget {
  ParentProfilePage({super.key});
  final controller = Get.put(ParentProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            2.h.heightBox,
            _textFormFieldView(),
            2.h.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>TermsConditionPage()));
                    },
                    child: Text(
                      "Terms & Condition",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                        color: AppColor.blue224,
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy Policy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          color: AppColor.blue224,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAllNamed(AppRoutes.createAccountPage);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.login,
                              color: AppColor.yellow29,
                            ),
                            2.w.widthBox,
                            Text(
                              "Log Out",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleMulish,
                                fontSize: 16.07,
                                color: AppColor.yellow29,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  6.h.heightBox,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _textFormFieldView() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          1.h.heightBox,
          _textField(
            controller: controller.userNameController,
            title: "Username",
            onSaved: (p0) {},
            onChanged: (value) {},
          ),
          1.h.heightBox,
          _textField(
            controller: controller.emailController,
            title: "Email I’d",
            onChanged: (value) {},
          ),
          1.h.heightBox,
          _textField(
            controller: controller.phoneNumberController,
            title: "Phone Number",
            onChanged: (value) {},
          ),
          1.h.heightBox,
          _textField(
            controller: controller.passwordController,
            title: "Password",
            onChanged: (value) {},
          ),
          1.h.heightBox,
        ],
      ),
    );
  }

  Padding _textField({
    TextEditingController? controller,
    String? title,
    String? Function(String?)? validator,
    void Function(String?)? onSaved,
    void Function(String)? onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title",
            style: TextStyle(
              color: AppColor.white255,
              fontFamily: AppTextStyle.textStylePoppins,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColor.white255,
              ),
            ),
            child: TextFormField(
              cursorColor: AppColor.white255,
              controller: controller,
              style: TextStyle(
                color: AppColor.white255,
                fontFamily: AppTextStyle.textStylePoppins,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              validator: validator,
              onSaved: onSaved,
              onChanged: onChanged,
            ),
          )
        ],
      ),
    );
  }

  SizedBox _header() {
    return SizedBox(
      height: 480,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 353,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/profile_bg.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColor.white255,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "My Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.white255,
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.28,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 299,
              alignment: Alignment.center,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.white255,
              ),
              child: Column(
                children: [
                  8.h.heightBox,
                  Text(
                    "Sundarm Chandran",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStylePoppins,
                      fontSize: 17.85,
                      fontWeight: FontWeight.w800,
                      color: AppColor.black,
                    ),
                  ),
                  2.h.heightBox,
                  _headerCard(
                    onTap: () {
                      Get.toNamed(AppRoutes.studentHybridProfilePage);
                    },
                    image: Image.asset(
                      "assets/images/lora.png",
                    ),
                    title: "Ram Chandran",
                  ),
                  1.h.heightBox,
                  _headerCard(
                    onTap: () {
                      Get.toNamed(AppRoutes.studentOnlineProfilePage);
                    },
                    image: Image.asset(
                      "assets/images/jack.png",
                    ),
                    title: "Varun Chandran",
                  ),
                  2.h.heightBox,
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 9,
                          child: MaterialButton(
                            height: 48,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11.9),
                            ),
                            color: AppColor.blue224,
                            onPressed: () {
                              Get.toNamed(AppRoutes.parentRegisterProfilePage);
                            },
                            child: Text(
                              "Add Another Student",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleRobote,
                                fontSize: 17.85,
                                color: AppColor.white255,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        4.w.widthBox,
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.editProfilePenPage);
                            },
                            child: Container(
                              width: 51.36,
                              height: 48,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11.9),
                                color: AppColor.blue224.withOpacity(0.2),
                              ),
                              child: SvgPicture.asset(
                                "assets/svg/edit.svg",
                                color: AppColor.blue224,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.white255, width: 5),
              ),
              child: Image.asset(
                "assets/images/lora.png",
                height: 100,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell _headerCard({
    Widget? image,
    String? title,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: 50,
        alignment: Alignment.center,
        child: Card(
          elevation: 2,
          shadowColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              Container(
                  height: 29,
                  width: 29,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.blue224, width: 2),
                  ),
                  child: image),
              6.w.widthBox,
              Text(
                "${title}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppTextStyle.textStylePoppins,
                  fontSize: 16.61,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
