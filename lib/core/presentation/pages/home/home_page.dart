import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/home/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return Scaffold(
        body: Column(
          children: [
            _header(),
            2.h.heightBox,
            _feesTimeCalender(),
          ],
        ),
      );
    });
  }

  Container _feesTimeCalender() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: SvgPicture.asset(
              "assets/svg/calender_time.svg",
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Current Fee Band",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 12,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: " :\tBeginner",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: "\t(Grade 1)",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 10,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Music Board",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 12,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: " :\tTrinity College London",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Classes credited :",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: AppColor.white255,
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: "\t12",
                          style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            color: AppColor.blue224,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Next Payment Due Date",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: " :\t15 May 2022",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 12,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Last Payment Received",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: " :\t15 Mar 2022",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 12,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Due Date",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 10,
                            color: AppColor.white255.withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                              text: " :\t15 Mar 2022",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleMulish,
                                fontSize: 12,
                                color: AppColor.white255,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      4.w.widthBox,
                      MaterialButton(
                        minWidth: 48.17,
                        height: 17,
                        color: AppColor.yellow29,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.2),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 8,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: AppColor.white255,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    controller.feesPayList.length,
                    (index) => _paymentDate(
                      text: controller.feesPayList[index]['date'],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Container _paymentDate({
    String? text,
  }) {
    return Container(
      width: text == '' ? 20 : 50,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.white255,
          ),
        ),
      ),
      child: Text(
        "$text",
        style: TextStyle(
          fontFamily: AppTextStyle.textStyleMulish,
          fontSize: 6,
          color: AppColor.white255,
        ),
      ),
    );
  }

  _header({BuildContext? context}) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Good morning",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: "\tSAM",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 20,
                        color: AppColor.blue224,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/music_logo.png",
                height: 40,
                width: 40,
              )
            ],
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const SizedBox(
                  height: 55,
                  width: 55,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/men.png",
                    ),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: AppColor.white255,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColor.blue224,
                    ),
                    Text(
                      "Noida, sector 142",
                      style: TextStyle(
                        color: AppColor.white255,
                        fontFamily: AppTextStyle.textStyleRaleway,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 18,
                        color: AppColor.blue224,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 41,
                  width: 41,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.white255,
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_rounded,
                        color: AppColor.black,
                        size: 30,
                      ),
                      Positioned(
                        top: 3,
                        right: 5,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.blue224,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
