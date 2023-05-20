import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/ebook/controller/ebook_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class EBookPage extends StatelessWidget {
  EBookPage({super.key});
  final controller = Get.put(EbookController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Align(
              child: SvgPicture.asset(
                "assets/svg/check_view.svg",
              ),
            ),
            10.h.heightBox,
            Text(
              "Thanks, You have\nbeen registered",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 32,
                color: AppColor.blue224,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                letterSpacing: -0.29,
              ),
            ),
            8.h.heightBox,
            InkWell(
              onTap: () {
                controller.getImageFromGellary();
              },
              child: SvgPicture.asset("assets/svg/folder.svg"),
            ),
            2.h.heightBox,
            Text(
              "Upload Payment Screenshot",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 20,
                color: AppColor.blue224,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                letterSpacing: -0.29,
              ),
            ),
            6.h.heightBox,
            Image.asset(
              "assets/images/cyan.png",
              height: 100,
              width: 186,
            )
          ],
        ),
      ),
    );
  }
}
