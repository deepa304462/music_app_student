import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/widgets/custom_appbar.dart';

import 'controller/join_class_controller.dart';

class JoinClassPage extends StatelessWidget {
  JoinClassPage({super.key});
  final joinController = Get.put(JoinClassController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () {},
        title: "VEZ - KREW- WED",
        actions: [
          IconButton(
            icon: Icon(
              Icons.volume_up_outlined,
              color: AppColor.white255,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisExtent: 140,
            mainAxisSpacing: 20,
          ),
          shrinkWrap: true,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: AppColor.black51,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset("assets/svg/mic.svg"),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Image.asset(
                      "assets/images/men.png",
                      height: 64,
                      width: 64,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Loren Ipsum",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 14,
                          color: AppColor.white255,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.28,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: AppColor.appThemeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _circleButton(
            onTap: () {
              joinController.ratingDiloag();
            },
            backgroundColor: AppColor.red0,
            icon: Icon(
              Icons.call_end,
              color: AppColor.white255,
            ),
          ),
          _circleButton(
            backgroundColor: AppColor.black51,
            onTap: () {},
            icon: Icon(
              Icons.videocam,
              color: AppColor.white255,
            ),
          ),
          _circleButton(
            onTap: () {},
            backgroundColor: AppColor.black51,
            icon: Icon(
              Icons.mic,
              color: AppColor.white255,
            ),
          ),
          _circleButton(
            backgroundColor: AppColor.black51,
            onTap: () {},
            icon: Icon(
              Icons.more_vert,
              color: AppColor.white255,
            ),
          ),
        ],
      ),
    );
  }

  InkWell _circleButton({
    void Function()? onTap,
    Widget? icon,
    Color? backgroundColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: icon,
      ),
    );
  }
}
