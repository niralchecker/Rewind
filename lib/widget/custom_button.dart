import 'package:flutter/material.dart';
import 'package:rewind/widget/dynamic_text.dart';

class SimpleRoundedButton extends StatelessWidget {
  const SimpleRoundedButton({
    Key? key,
    this.color,
    this.textColor = Colors.white,
    required this.title,
    required this.onTap,
    this.width,
    this.height = 44,
    this.margin,
    this.image,
  }) : super(key: key);

  final double? width;
  final double height;
  final Color? color;
  final Color? textColor;
  final String? title;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final String? image;

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
            color: color ?? Colors.black,
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
                      color: textColor ?? Colors.white, fontSize: 16)),
            ),
          ),
        ),
      ),
    );
  }
}