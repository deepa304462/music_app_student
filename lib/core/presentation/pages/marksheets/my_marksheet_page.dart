import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/download/download_page.dart';
import 'package:music_app_student/core/presentation/pages/marksheets/controller/my_marksheet_controller.dart';
import 'package:music_app_student/core/presentation/widgets/custom_appbar.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MyMarksheetPage extends StatelessWidget {
  MyMarksheetPage({super.key});
  final controller = Get.put(MyMarksheetController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () {},
        centerTitle: true,
        title: "My Marksheets",
        fontFamily: AppTextStyle.textStyleMulish,
        fontSize: 20,
        fontWeight: FontWeight.w900,
        letterSpacing: -0.28,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Beginner",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleInter,
                  fontSize: 15,
                  color: AppColor.white255,
                  fontWeight: FontWeight.w700,
                ),
              ),
              2.h.heightBox,
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  3,
                  (index) => _cardDesign(
                    onTap: () {
                      Get.to(DownloadPage());
                    },
                    title: "Beginner (Grade 1)",
                    subTitle: "Marksheet",
                  ),
                ),
              ),
              2.h.heightBox,
              _horizontalLine(),
              2.h.heightBox,
              Text(
                "Intermediate",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleInter,
                  fontSize: 15,
                  color: AppColor.white255,
                  fontWeight: FontWeight.w700,
                ),
              ),
              2.h.heightBox,
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  3,
                  (index) => _cardDesign(
                    onTap: () {
                      Get.to(DownloadPage());
                    },
                    title: "Intermediate (Grade 1)",
                    subTitle: "Marksheet",
                  ),
                ),
              ),
              2.h.heightBox,
              _horizontalLine(),
              2.h.heightBox,
              Text(
                "Advanced",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleInter,
                  fontSize: 15,
                  color: AppColor.white255,
                  fontWeight: FontWeight.w700,
                ),
              ),
              2.h.heightBox,
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  3,
                  (index) => _cardDesign(
                    onTap: () {
                      Get.to(DownloadPage());
                    },
                    title: "Advanced (Grade 1)",
                    subTitle: "Marksheet",
                  ),
                ),
              ),
              2.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }

  Row _horizontalLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        32,
        (index) => Container(
          height: 1,
          width: 4,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          color: AppColor.white255,
        ),
      ),
    );
  }

  _cardDesign({String? title, String? subTitle, void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: AppColor.white255,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svg/aaa.svg"),
            2.w.widthBox,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleInter,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.02,
                  ),
                ),
                Text(
                  "$subTitle",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleInter,
                    fontSize: 16,
                    letterSpacing: 0.02,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
