import 'package:flutter/material.dart';

import 'custom_loading2_widget.dart';


class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  final double? borderRadius;
  final Color? fontColor;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? borderColor;
  final bool? isLoading;

  const CustomElevatedButton({
    super.key,
    required this.onTap,
    required this.buttonText,
    this.borderRadius,
    this.fontColor,
    this.fontSize,
    this.borderColor,
    this.backgroundColor, this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(48),
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          side: BorderSide(color: borderColor ?? Colors.transparent),
        ),
      ),
      child:
      isLoading==true?
      CustomLoadingWidget():
      Text(
        buttonText,
        style: TextStyle(
          color: fontColor ?? Colors.black,
          fontSize: fontSize ?? 16,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
