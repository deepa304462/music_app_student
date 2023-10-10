import 'package:flutter/material.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';

class TextFormFieldView extends StatelessWidget {
  const TextFormFieldView({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    required this.validator,
    this.lableText

  });

  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? hintText;
  final String? lableText;
  final String Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: AppColor.white255,
        ),
      ),
      child: TextFormField(
        validator: validator,
        style: TextStyle(color: AppColor.white255),
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: "$hintText",
          hintStyle: TextStyle(
            fontFamily: AppTextStyle.textStylePoppins,
            fontSize: 15.38,
            fontWeight: FontWeight.w500,
            color: AppColor.white255,
          ),
        ),
      ),
    );
  }
}
