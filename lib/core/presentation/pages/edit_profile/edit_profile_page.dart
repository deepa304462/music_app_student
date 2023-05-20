import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'controller/edit_profile_controller.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({super.key});
  final controller = Get.put(EditProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              _header(),
              _textField(
                controller: controller.usernameController,
                title: "Username",
              ),
              _textField(
                controller: controller.emailController,
                title: "Email I’d",
              ),
              _textField(
                controller: controller.phoneNumberController,
                title: "Phone Number",
              ),
              _textField(
                controller: controller.passwordController,
                title: "Password",
              ),
              _textField(
                controller: controller.dobController,
                title: "Date of birth",
              ),
              _textField(
                controller: controller.dateOfJoiningController,
                title: "Date of Joining",
              ),
              4.h.heightBox,
              MaterialButton(
                color: AppColor.blue224,
                minWidth: 240,
                height: 48,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.9),
                ),
                onPressed: () {},
                child: Text(
                  "Update",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStyleRobote,
                    fontSize: 17.85,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              6.h.heightBox,
            ],
          ),
        ),
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

  Stack _header() {
    return Stack(
      children: [
        SizedBox(
          // height: 390,
          child: Stack(
            children: [
              Image.asset("assets/images/unsplash_rectangle.png"),
              Container(
                width: double.infinity,
                height: 270,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/blur_rectangle.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            4.h.heightBox,
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColor.white255,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    "Edit Profile",
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
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
            4.h.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 145,
                    width: 145,
                    child: Stack(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.blue224,
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            maxRadius: 60,
                            backgroundImage: AssetImage(
                              "assets/images/jack.png",
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 20,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColor.white255,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              color: AppColor.blue224,
                              size: 40,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: SvgPicture.asset("assets/svg/edit.svg"),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
