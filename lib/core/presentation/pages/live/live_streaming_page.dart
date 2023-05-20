import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LiveStreamingPage extends StatelessWidget {
  const LiveStreamingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/bg_image.png"),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 121,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: AppColor.black29.withOpacity(0.4),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.white255.withOpacity(0.4),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColor.black,
                            size: 20,
                          ),
                        ),
                      ),
                      4.w.widthBox,
                      Container(
                        height: 12,
                        width: 12,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(0, 172, 7, 1),
                        ),
                      ),
                      2.w.widthBox,
                      Text(
                        "Live",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.white255,
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.28,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 78,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: AppColor.white255.withOpacity(0.4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.visibility,
                              color: AppColor.white255,
                            ),
                            Text(
                              "100",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStylePoppins,
                                fontSize: 16,
                                color: AppColor.white255,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.28,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            15.h.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 450,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 60,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/women.png"),
                                ),
                                2.w.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mohan & Manoj",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily:
                                            AppTextStyle.textStyleMulish,
                                        fontSize: 10,
                                        color: AppColor.white255,
                                        letterSpacing: -0.28,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Joined",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily:
                                            AppTextStyle.textStyleMulish,
                                        fontSize: 12,
                                        color: AppColor.white255,
                                        letterSpacing: -0.28,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: AppColor.white255.withOpacity(0.3),
                      ),
                      child: SvgPicture.asset("assets/svg/heart.svg"),
                    ),
                    2.h.heightBox,
                    Container(
                      height: 42,
                      width: 42,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: AppColor.white255.withOpacity(0.3),
                      ),
                      child: SvgPicture.asset("assets/svg/gift.svg"),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppColor.white255,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/video_call.svg",
                        ),
                      ),
                      2.w.widthBox,
                      Text(
                        "Send a request to be in -- live video.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 12,
                          color: AppColor.white255,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.28,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 21,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 31, 31, 1),
                        borderRadius: BorderRadius.circular(38.4)),
                    child: Text(
                      "Request to join",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.white255,
                        fontSize: 8.32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
            1.h.heightBox,
            Expanded(
              child: Container(
                height: 48,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: AppColor.white255.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/svg/chat_.svg",
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                    hintText: "Type Your Comment.......",
                    hintStyle: TextStyle(
                      fontFamily: AppTextStyle.textStylePoppins,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white255,
                      fontSize: 16,
                      letterSpacing: -0.28,
                    ),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
