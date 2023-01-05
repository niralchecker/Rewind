import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/resources/app_images.dart';
import 'package:rewind/resources/app_texts.dart';
import 'package:rewind/widget/dynamic_text.dart';

import '../../../widget/custom_textfield.dart';
import '../../../widget/top_slider.dart';
import '../controllers/otp_controller.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  final controller = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => {},
                  child: Container(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 10, right: 20),
                      child: SvgPicture.asset(AppImages.back)),
                ),
                const TopSlider(
                  firstFilled: true,
                  secondFilled: true,
                ),
              ],
            ),
            verticalSpacing(20),
            Align(
              alignment: Alignment.topLeft,
              child: DynamicText(
                text: AppTexts.verificationCodeText,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SfProFont',
                ),
              ),
            ),
            verticalSpacing(20),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                children: [
                  SizedBox(
                    height: 60,
                    width: 50,
                    child: CustomTextField(
                      textStyle: const TextStyle(fontSize: 20),
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      errorText: 'pleaseEnterText1',
                      textColor: Colors.black,
                      backgroundColour: Colors.white,
                      headerTextHint: '',
                      txtController: controller.otp1Controller,
                      ctx: context,
                      onTap: () {},
                      visible: false,
                    ),
                  ),
                  horizontalSpacing(15),
                  SizedBox(
                    height: 60,
                    width: 50,
                    child: CustomTextField(
                      textStyle: const TextStyle(fontSize: 20),
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      errorText: 'pleaseEnterText1',
                      textColor: Colors.black,
                      backgroundColour: Colors.white,
                      headerTextHint: '',
                      txtController: controller.otp2Controller,
                      ctx: context,
                      onTap: () {},
                      visible: false,
                    ),
                  ),
                  horizontalSpacing(15),
                  SizedBox(
                    height: 60,
                    width: 50,
                    child: CustomTextField(
                      textStyle: const TextStyle(fontSize: 20),
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      errorText: 'pleaseEnterText1',
                      textColor: Colors.black,
                      backgroundColour: Colors.white,
                      headerTextHint: '',
                      txtController: controller.otp3Controller,
                      ctx: context,
                      onTap: () {},
                      visible: false,
                    ),
                  ),
                  horizontalSpacing(15),
                  SizedBox(
                    height: 60,
                    width: 50,
                    child: CustomTextField(
                      textStyle: const TextStyle(fontSize: 20),
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      errorText: 'pleaseEnterText1',
                      textColor: Colors.black,
                      backgroundColour: Colors.white,
                      headerTextHint: '',
                      txtController: controller.otp4Controller,
                      ctx: context,
                      onTap: () {},
                      visible: false,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              DynamicText(
                text: AppTexts.receivedCodeText,
                style: const TextStyle(
                    fontFamily: 'SfProFont', color: Colors.grey),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                              side: BorderSide(color: Colors.black)))),
                  onPressed: () {},
                  child: DynamicText(
                      text: AppTexts.newCode,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'SfProFont',
                      )))
            ])
          ],
        ),
      ),
    );
  }
}
