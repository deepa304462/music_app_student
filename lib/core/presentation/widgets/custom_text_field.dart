import 'package:flutter/material.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon,
    this.height = 56,
    this.enableInteractiveSelection = false,
  });
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final double? height;
  final bool? enableInteractiveSelection;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        enableInteractiveSelection: enableInteractiveSelection,
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: "$hintText",
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            fontFamily: AppTextStyle.textStyleMulish,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: AppColor.black,
          ),
        ),
      ),
    );
  }
}
