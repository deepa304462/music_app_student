import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    this.title,
    this.fontFamily,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.letterSpacing,
    required this.onPressed,
    this.color,
    this.backgrounColor,
    this.height,
    this.minWidth,
    this.shape,
  });
  final String? fontFamily;
  final String? title;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? fontSize;
  final double? letterSpacing;
  final void Function()? onPressed;
  final Color? color;
  final double? minWidth;
  final double? height;
  final Color? backgrounColor;
  final ShapeBorder? shape;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      height: height,
      color: backgrounColor,
      shape: shape,
      onPressed: onPressed,
      child: Text(
        "$title",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          letterSpacing: letterSpacing,
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}
