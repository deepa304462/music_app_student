import 'package:flutter/material.dart';

import 'package:get/get_utils/get_utils.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'components/another_day/another_day_view.dart';
import 'components/some_day/some_day_view.dart';

class RescheduleDiloagBox extends StatefulWidget {
  const RescheduleDiloagBox({super.key});

  @override
  State<RescheduleDiloagBox> createState() => _DiloagBoxState();
}

class _DiloagBoxState extends State<RescheduleDiloagBox> {
  static PageController pageController = PageController(
    initialPage: 0,
  );
  static bool isSelectedAnotherDay = true;
  static bool isSelectedSomeDay = false;
  @override
  Widget build(BuildContext context) {
    return showReschedule();
  }

  Widget showReschedule() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 559,
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            color: AppColor.white255, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              "reschedule".capitalizeFirst.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.black29,
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            2.h.heightBox,
            Container(
              height: 36,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColor.black.withOpacity(0.05),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (isSelectedAnotherDay == false) {
                          isSelectedAnotherDay = !isSelectedAnotherDay;
                          isSelectedSomeDay = false;
                        }
                        setState(() {});
                        pageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear,
                        );
                      },
                      child: Container(
                        width: 148,
                        height: 31,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelectedAnotherDay
                              ? AppColor.white255
                              : Colors.transparent,
                          border: Border.all(
                            color: isSelectedAnotherDay
                                ? AppColor.yellow0
                                : Colors.transparent,
                          ),
                        ),
                        child: Text(
                          "Another Day",
                          style: TextStyle(
                            color: isSelectedAnotherDay
                                ? AppColor.yellow0
                                : AppColor.black29,
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14.6,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (!isSelectedSomeDay) {
                          isSelectedSomeDay = !isSelectedSomeDay;
                          isSelectedAnotherDay = false;
                        }

                        print(isSelectedSomeDay);
                        setState(() {});
                        pageController.animateToPage(
                          2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear,
                        );
                      },
                      child: Container(
                        width: 148,
                        height: 31,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelectedSomeDay
                              ? AppColor.white255
                              : Colors.transparent,
                          border: Border.all(
                            color: isSelectedSomeDay
                                ? AppColor.yellow0
                                : Colors.transparent,
                          ),
                        ),
                        child: Text(
                          "Same Day",
                          style: TextStyle(
                            color: isSelectedSomeDay
                                ? AppColor.yellow0
                                : AppColor.black29,
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14.6,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            2.h.heightBox,
            Expanded(
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  AnotherDayView(),
                  SomeDayView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
