import 'dart:developer';

import 'package:awesome_icons/awesome_icons.dart';

import 'package:flutter/material.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/chat/model/messageModel.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'messageBox.dart';

class BottomSendNavigation extends StatefulWidget {
  @override
  _BottomSendNavigationState createState() => _BottomSendNavigationState();
}

class _BottomSendNavigationState extends State<BottomSendNavigation>
    with SingleTickerProviderStateMixin {
  TextEditingController _sendMessageController = TextEditingController();

  bool showEmoji = false;

  FocusNode focusNode = FocusNode();

  Icon _emojiIcon = const Icon(
    FontAwesomeIcons.smileWink,
    color: Colors.grey,
    size: 20,
  );

  @override
  void initState() {
    super.initState();
    focusNode.addListener(
      () {
        if (focusNode.hasFocus) {
          setState(() {
            showEmoji = false;
            _emojiIcon = const Icon(
              FontAwesomeIcons.smileWink,
              color: Colors.grey,
              size: 20,
            );
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white242,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: WillPopScope(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    height: 25,
                    width: 135,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColor.blue224,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "December 12, 2022",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.white255,
                        fontSize: 13,
                        fontFamily: AppTextStyle.textStyleMontserrat,
                      ),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(20),
                    children: List.generate(
                      messages.length = 3,
                      (index) {
                        return MessageBox(
                          isMe: messages[index]['isMe'],
                          message: messages[index]['message'],
                        );
                      },
                    ),
                  ),
                  10.h.heightBox,
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: AppColor.white255,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextField(
                                      focusNode: focusNode,
                                      cursorColor: Colors.black,
                                      controller: _sendMessageController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Type Here",
                                        prefixIcon: IconButton(
                                          icon: _emojiIcon,
                                          onPressed: () {
                                            focusNode.unfocus();
                                            focusNode.canRequestFocus = false;
                                            setState(() {
                                              showEmoji = !showEmoji;
                                              _emojiIcon = const Icon(
                                                  FontAwesomeIcons.keyboard);
                                            });
                                          },
                                        ),
                                        suffixIcon: const Icon(
                                          FontAwesomeIcons.paperclip,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 12),
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColor.white255,
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.microphone,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                              4.w.widthBox,
                              InkWell(
                                onTap: () {
                                  log("Tap");
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(right: 5),
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.blue224,
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.solidPaperPlane,
                                    color: AppColor.white255,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // showEmoji ? showEmojiPicker() : Container(),
              ],
            ),
          ],
        ),
        onWillPop: () {
          if (showEmoji) {
            setState(() {
              showEmoji = false;
            });
          } else {
            Navigator.pop(context);
          }
          return Future.value(false);
        },
      ),
    );
  }

  // Widget showEmojiPicker() {
  //   return EmojiPicker(
  //     rows: 4,
  //     columns: 7,
  //     onEmojiSelected: (emoji, category) {
  //       print(emoji);
  //       _sendMessageController.text = _sendMessageController.text + emoji.emoji;
  //     },
  //   );
  // }
}
