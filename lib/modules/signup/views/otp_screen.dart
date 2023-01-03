import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/signup/controllers/otp_controller.dart';
import 'package:rewind/resources/app_images.dart';
import 'package:rewind/resources/app_texts.dart';
import 'package:rewind/widget/dynamic_text.dart';

import '../../../widget/top_slider.dart';

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
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: DynamicText(
                text: AppTexts.verificationCodeText,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                children: [
                  SizedBox(
                    height: 80,
                    width: 50,
                    child: TextField(
                      style: const TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      maxLength: 1,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        counterText: "",
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 80,
                    width: 50,
                    child: TextField(
                      style: const TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      maxLength: 1,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        counterText: "",
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 80,
                    width: 50,
                    child: TextField(
                      style: const TextStyle(fontSize: 20),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      maxLength: 1,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        counterText: "",
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const SizedBox(
                    height: 80,
                    width: 50,
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      maxLength: 1,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        counterText: "",
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
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
                style:
                    const TextStyle(fontFamily: 'Poppins', color: Colors.grey),
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
                        fontFamily: 'Poppins',
                      )))
            ])
          ],
        ),
      ),
    );
  }
}
