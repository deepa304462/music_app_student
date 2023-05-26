import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';

class MessageBox extends StatelessWidget {
  final bool? isMe;
  final String? message;
  const MessageBox({
    Key? key,
    required this.isMe,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe!) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 260,
                    decoration: BoxDecoration(
                      color: AppColor.white255,
                      border: Border.all(color: AppColor.blue224),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                        topLeft: Radius.circular(17),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        message!,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12.73,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppTextStyle.textStyleMulish,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 60),
                          child:
                              SvgPicture.asset("assets/svg/double_check.svg"),
                        ),
                        Text(
                          "10.45",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMontserrat,
                            fontSize: 12.93,
                            fontWeight: FontWeight.w500,
                            color: AppColor.blue224,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 260,
                    decoration: BoxDecoration(
                      color: AppColor.blue224,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                        topRight: Radius.circular(17),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 16),
                      child: Text(
                        message!,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12.73,
                          color: AppColor.white255,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppTextStyle.textStyleMulish,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "10.45",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMontserrat,
                        fontSize: 12.93,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blue224,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
