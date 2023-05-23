import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/community/controller/community_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CommunityPage extends StatelessWidget {
  CommunityPage({super.key});
  final controller = Get.put(CommunityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _searchBar(),
                _appBar(),
                Divider(
                  thickness: 2,
                  color: AppColor.white255,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.communityListData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/man-2.png"),
                          ),
                          4.w.widthBox,
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Loren ipsum",
                                        style: TextStyle(
                                          fontFamily:
                                              AppTextStyle.textStylePoppins,
                                          color: AppColor.white255,
                                          fontSize: 16,
                                          letterSpacing: -0.28,
                                        ),
                                      ),
                                      Text(
                                        "Yesterday at 10:30 AM",
                                        style: TextStyle(
                                          fontFamily:
                                              AppTextStyle.textStylePoppins,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: AppColor.white255,
                                          letterSpacing: -0.28,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                1.h.heightBox,
                                controller.communityListData[index]['title'] ==
                                        ''
                                    ? const SizedBox()
                                    : Text(
                                        "Loren ipsum Loren loren loren loren loren",
                                        style: TextStyle(
                                          fontFamily:
                                              AppTextStyle.textStylePoppins,
                                          fontSize: 16,
                                          color: AppColor.white255
                                              .withOpacity(0.6),
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.28,
                                        ),
                                      ),
                                controller.communityListData[index]['image'] ==
                                        ''
                                    ? const SizedBox()
                                    : Image.asset("assets/images/post.png"),
                                controller.communityListData[index]['audio'] ==
                                        ''
                                    ? const SizedBox()
                                    : SvgPicture.asset("assets/svg/audio.svg")
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                50.h.heightBox,
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      height: 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.black29,
                        border: Border.all(
                          color: AppColor.white255,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 138,
                            height: 92,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/post.png"),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.green7,
                                            ),
                                          ),
                                          2.w.widthBox,
                                          Text(
                                            "Live",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily:
                                                  AppTextStyle.textStylePoppins,
                                              fontSize: 16,
                                              color: AppColor.white255,
                                              letterSpacing: -0.28,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          4.w.widthBox,
                                          Container(
                                            height: 24,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: AppColor.white255
                                                  .withOpacity(0.4),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.visibility,
                                                  color: AppColor.white255,
                                                  size: 13,
                                                ),
                                                1.w.widthBox,
                                                Text(
                                                  "100",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: AppTextStyle
                                                        .textStylePoppins,
                                                    fontSize: 10.1,
                                                    letterSpacing: -0.18,
                                                    color: AppColor.white255,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                        icon: SvgPicture.asset(
                                          "assets/svg/ping.svg",
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 41,
                                    decoration: BoxDecoration(
                                      color: AppColor.white255.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(17.2),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "assets/svg/message.svg",
                                          ),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        hintText: 'Type Your Comment....',
                                        hintStyle: TextStyle(
                                          color: AppColor.white255,
                                          fontSize: 13.77,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              AppTextStyle.textStylePoppins,
                                          letterSpacing: -0.24,
                                        ),
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2, bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(
                          color: AppColor.white255,
                        ),
                        child: TextField(
                          controller: controller.typeCommentController,
                          decoration: InputDecoration(
                            hintText: "Type Your Comment.......",
                            hintStyle: TextStyle(
                              fontFamily: AppTextStyle.textStylePoppins,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.28,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    2.w.widthBox,
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(
                          color: AppColor.blue224,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Go Live",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStylePoppins,
                                fontSize: 16,
                                color: AppColor.white255,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.28,
                              ),
                            ),
                            SvgPicture.asset("assets/svg/go_live.svg"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _appBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Community Chat',
            style: TextStyle(
              fontFamily: AppTextStyle.textStylePoppins,
              fontSize: 16,
              color: AppColor.white255,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.28,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.share,
                  color: AppColor.yellow29,
                ),
                onPressed: () {},
              ),
              MaterialButton(
                color: AppColor.blue224,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Members",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 12,
                        color: AppColor.white255,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.28,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 16,
                      color: AppColor.white255,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Align _searchBar() {
    return Align(
      child: Container(
        height: 46,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
        width: double.infinity,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColor.white255,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search teacher, instrument, class",
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintStyle: TextStyle(
              fontFamily: AppTextStyle.textStylePoppins,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.28,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
