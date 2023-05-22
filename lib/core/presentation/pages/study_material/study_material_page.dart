import 'dart:developer';

import 'package:file_picker_pro/file_data.dart';
import 'package:file_picker_pro/files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class StudyMaterialPage extends StatefulWidget {
  const StudyMaterialPage({super.key});

  @override
  State<StudyMaterialPage> createState() => _StudyMaterialPageState();
}

class _StudyMaterialPageState extends State<StudyMaterialPage> {
  bool isSelectedDocumentBtn = true;
  bool isSelectedVideosBtn = false;
  bool isSelectedAudioBtn = false;
  FileData fileData = FileData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 63,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColor.yellow29,
                  ),
                ),
                child: Text(
                  "Study Material",
                  style: TextStyle(
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.28,
                  ),
                ),
              ),
              2.h.heightBox,
              Text(
                "General References",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleInter,
                  fontSize: 20,
                  color: AppColor.white255,
                  fontWeight: FontWeight.w700,
                ),
              ),
              2.h.heightBox,
              _animatedMaterialButtonListView(),
              2.h.heightBox,
              Column(
                children: [
                  Container(
                    height: 172,
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: AppColor.white226,
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/study.png"),
                      ),
                    ),
                    child: Container(
                      height: 42,
                      width: 130,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.black29,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(26),
                        ),
                      ),
                      child: Text(
                        "6-9 months",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleInter,
                          fontSize: 14.9,
                          fontWeight: FontWeight.w700,
                          color: AppColor.white255,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Guitar For Beginners",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleInter,
                                fontSize: 21.13,
                                fontWeight: FontWeight.w700,
                                color: AppColor.white255,
                              ),
                            ),
                            Row(
                              children: [
                                VxRating(
                                  onRatingUpdate: (value) {},
                                  count: 1,
                                  selectionColor: AppColor.yellow,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      fontFamily: AppTextStyle.textStyleInter,
                                      color: AppColor.white255),
                                ),
                                2.w.widthBox,
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    color: AppColor.yellow29,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                2.w.widthBox,
                                Text(
                                  "Elementary",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStyleInter,
                                    color: AppColor.white255,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                2.w.widthBox,
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    color: AppColor.yellow29,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                2.w.widthBox,
                                Text(
                                  "\$\$\$\$",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStyleInter,
                                    color: AppColor.white255,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          "assets/svg/play_btn.svg",
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  _horizontalLine(),
                  2.h.heightBox,
                  _animatedMaterialButtonListView(
                    uploadButtonVisible: false,
                  ),
                  2.h.heightBox,
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "School",
                                  style: TextStyle(color: Colors.transparent),
                                ),
                                Text(
                                  "Rock School London",
                                  style: TextStyle(
                                    color: AppColor.white255,
                                    fontFamily: AppTextStyle.textStyleInter,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                MaterialButton(
                                  color: AppColor.blue224,
                                  minWidth: 73,
                                  height: 32,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(64.89),
                                  ),
                                  onPressed: () {
                                    Files.filePicker(
                                      fileData: fileData,
                                      onSelected: (fileData) {
                                        fileData = fileData;
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset("assets/svg/upload.svg"),
                                      2.w.widthBox,
                                      Text(
                                        "upload",
                                        style: TextStyle(
                                          fontFamily:
                                              AppTextStyle.textStyleInter,
                                          fontSize: 10.38,
                                          color: AppColor.white255,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          1.h.heightBox,
                          Container(
                            height: 172,
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              color: AppColor.white226,
                              borderRadius: BorderRadius.circular(40),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/study.png"),
                              ),
                            ),
                            child: Container(
                              height: 42,
                              width: 130,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColor.black29,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(26),
                                ),
                              ),
                              child: Text(
                                "6-9 months",
                                style: TextStyle(
                                  fontFamily: AppTextStyle.textStyleInter,
                                  fontSize: 14.9,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.white255,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Guitar For Beginners",
                                      style: TextStyle(
                                        fontFamily: AppTextStyle.textStyleInter,
                                        fontSize: 21.13,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.white255,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        VxRating(
                                          onRatingUpdate: (value) {},
                                          count: 1,
                                          selectionColor: AppColor.yellow,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                              fontFamily:
                                                  AppTextStyle.textStyleInter,
                                              color: AppColor.white255),
                                        ),
                                        2.w.widthBox,
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: BoxDecoration(
                                            color: AppColor.yellow29,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        2.w.widthBox,
                                        Text(
                                          "Elementary",
                                          style: TextStyle(
                                            fontFamily:
                                                AppTextStyle.textStyleInter,
                                            color: AppColor.white255,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        2.w.widthBox,
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: BoxDecoration(
                                            color: AppColor.yellow29,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        2.w.widthBox,
                                        Text(
                                          "\$\$\$\$",
                                          style: TextStyle(
                                            fontFamily:
                                                AppTextStyle.textStyleInter,
                                            color: AppColor.white255,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                  "assets/svg/play_btn.svg",
                                  height: 40,
                                  width: 40,
                                ),
                              ],
                            ),
                          )
                        ]),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _animatedMaterialButtonListView({bool uploadButtonVisible = true}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        animatedButton(
          onTap: () {
            setState(() {
              if (isSelectedDocumentBtn == false) {
                isSelectedDocumentBtn = !isSelectedDocumentBtn;
                isSelectedAudioBtn = false;
                isSelectedVideosBtn = false;
              } else {
                log("already selected");
              }
            });
          },
          isSelectedBtn: isSelectedDocumentBtn,
          leadingTitle: "D",
          title: "Document",
          subTitle: "(20)",
        ),
        animatedButton(
          onTap: () {
            setState(() {
              if (isSelectedVideosBtn == false) {
                isSelectedDocumentBtn = false;
                isSelectedVideosBtn = !isSelectedVideosBtn;
                isSelectedAudioBtn = false;
              } else {
                log("already selected");
              }
            });
          },
          isSelectedBtn: isSelectedVideosBtn,
          leadingTitle: "V",
          title: "Videos",
          subTitle: "(20)",
        ),
        animatedButton(
          onTap: () {
            setState(() {
              if (isSelectedAudioBtn == false) {
                isSelectedAudioBtn = !isSelectedAudioBtn;
                isSelectedDocumentBtn = false;
                isSelectedVideosBtn = false;
              } else {
                log("already selected");
              }
            });
          },
          isSelectedBtn: isSelectedAudioBtn,
          leadingTitle: "A",
          title: "Audios",
          subTitle: "(20)",
        ),
        uploadButtonVisible
            ? MaterialButton(
                color: AppColor.blue224,
                minWidth: 73,
                height: 32,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(64.89),
                ),
                onPressed: () {
                  Files.filePicker(
                    fileData: fileData,
                    onSelected: (fileData) {
                      fileData = fileData;
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/svg/upload.svg"),
                    2.w.widthBox,
                    Text(
                      "upload",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleInter,
                        fontSize: 10.38,
                        color: AppColor.white255,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              )
            : const SizedBox(
                width: 73,
              ),
      ],
    );
  }

  GestureDetector animatedButton({
    void Function()? onTap,
    String? leadingTitle = 'D',
    String? title = 'title',
    String? subTitle = 'subTitle',
    bool isSelectedBtn = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: isSelectedBtn ? 110 : 52,
        width: isSelectedBtn ? 66 : 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: isSelectedBtn
              ? BorderRadius.circular(40)
              : BorderRadius.circular(100),
          color: AppColor.white255,
        ),
        child: isSelectedBtn
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 4,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 52,
                      width: 52,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.black29,
                      ),
                      child: Text(
                        "$leadingTitle",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 24,
                          color: AppColor.white255,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "$title",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleInter,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "$subTitle",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleInter,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              )
            : Text(
                "$leadingTitle",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStylePoppins,
                  fontSize: 24,
                  color: AppColor.black29,
                  fontWeight: FontWeight.bold,
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
}
