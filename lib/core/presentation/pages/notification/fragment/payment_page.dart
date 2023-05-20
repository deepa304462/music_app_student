import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 56,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: AppColor.white255,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search Invoice and Receipt by Date....",
                  hintStyle: TextStyle(
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    color: AppColor.black.withOpacity(0.5),
                    letterSpacing: -0.28,
                    fontWeight: FontWeight.w400,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColor.white255,
                  borderRadius: BorderRadius.circular(17.95),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Next Payment Due Date:",
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 12,
                              color: AppColor.black29,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: " 15 May 2022",
                                style: TextStyle(
                                  fontFamily: AppTextStyle.textStyleMulish,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Last Payment Received:".trim(),
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 12,
                              color: AppColor.black29,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: " 15 Mar 2022".trim(),
                                style: TextStyle(
                                  fontFamily: AppTextStyle.textStyleMulish,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Due Date:",
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 12,
                              color: AppColor.black29,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: " 15 May 2022",
                                style: TextStyle(
                                  fontFamily: AppTextStyle.textStyleMulish,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        1.h.heightBox,
                        MaterialButton(
                          color: AppColor.blue224,
                          minWidth: 210,
                          height: 33,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),
                          onPressed: () {},
                          child: Text(
                            index == 0 ? "Pay Now" : "Download Receipt",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 14.36,
                              color: AppColor.white255,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset("assets/svg/pdf.svg")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
