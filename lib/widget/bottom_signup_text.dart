import 'package:flutter/material.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/values/text_style.dart';
import 'package:rewind/widget/dynamic_text.dart';

class BottomSignupView extends StatelessWidget {
  const BottomSignupView({
    Key? key,
    required this.ctaText,
    this.onTap,
    required this.mainText,
  }) : super(key: key);

  final String ctaText;
  final String mainText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DynamicText(
                  text: mainText,
                  style: textStyle15.copyWith(fontWeight: FontWeight.w400),
                ),
                horizontalSpacing(4),
                DynamicText(
                  text: ctaText,
                  style: textStyle15.copyWith(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ),
        verticalSpacing(8),
      ],
    );
  }
}