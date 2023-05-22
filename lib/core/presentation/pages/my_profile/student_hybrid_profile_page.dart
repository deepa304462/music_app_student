import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentHybridProfilePage extends StatelessWidget {
  const StudentHybridProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(),
          _textField(),
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
      height: 350,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 270,
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
              height: 190,
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
                    "Ram Charan",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStylePoppins,
                      fontSize: 17.85,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColor.blue224,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VxRating(
                            value: 1,
                            count: 1,
                            selectionColor: AppColor.yellow,
                            onRatingUpdate: (value) {},
                            size: 18,
                          ),
                          1.w.widthBox,
                          Text(
                            "4.5 (1000)",
                            style: TextStyle(
                              color: AppColor.black29,
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 15.36,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.43,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColor.blue224,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/guitar.png",
                        height: 41,
                        width: 42,
                      ),
                      2.w.widthBox,
                      RichText(
                        text: TextSpan(
                          text: "Exp: ",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 16,
                            color: AppColor.black29,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.59,
                          ),
                          children: const [
                            TextSpan(
                              text: "10 Years",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.blue224, width: 5),
              ),
              child: Image.asset(
                "assets/images/jon.png",
                height: 100,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
