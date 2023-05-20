import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 505,
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/documents.png",
                  ),
                ),
              ),
            ),
            Column(
              children: [
                8.h.heightBox,
                MaterialButton(
                  color: AppColor.white255,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minWidth: 236,
                  height: 48,
                  onPressed: () {},
                  child: Text(
                    "Download",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 19.35,
                      color: AppColor.black29,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.28,
                    ),
                  ),
                ),
                7.h.heightBox,
                IconButton(
                  icon: SvgPicture.asset("assets/svg/close.svg"),
                  onPressed: () {},
                )
              ],
            ),
            2.h.heightBox,
          ],
        ),
      ),
    );
  }
}
