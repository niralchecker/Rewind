import 'package:flutter/material.dart';
import 'package:rewind/widget/dynamic_text.dart';

class SimpleOutlinedButton extends StatelessWidget {
  const SimpleOutlinedButton({
    Key? key,
    this.color,
    this.textColor = Colors.black,
    required this.title,
    required this.onTap,
    this.width,
    this.height = 44,
    this.margin,
    this.image,
    this.borderWidth,
    this.borderColor,
    this.borderRadius,
    this.fontSize,
  }) : super(key: key);

  final double? width;
  final double? borderWidth;
  final double height;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final String? title;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final String? image;
  final double? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        margin: margin,
        child: Ink(
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            border: Border.all(
                width: borderWidth ?? 1.5, color: borderColor ?? Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 10)),
          ),
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.black12,
            highlightColor: Colors.black12,
            focusColor: Colors.black12,
            hoverColor: Colors.black12,
            child: Center(
              child: DynamicText(
                  text: title,
                  style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: fontSize ?? 16)),
            ),
          ),
        ),
      ),
    );
  }
}
