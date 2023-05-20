import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = 60,
    this.fontFamily,
    this.fontSize,
    this.title = '',
    this.fontWeight,
    this.iconColor,
    this.letterSpacing,
    this.onBackPressed,
    this.textColor,
    this.centerTitle,
    this.actions,
  });
  final double? fontSize;
  final double? height;
  final String? fontFamily;
  final void Function()? onBackPressed;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final Color? textColor;
  final Color? iconColor;
  final String? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: iconColor,
        ),
        onPressed: onBackPressed,
      ),
      title: Text(
        "$title",
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          color: textColor,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
