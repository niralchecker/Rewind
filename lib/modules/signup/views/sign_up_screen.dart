import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/signup/controllers/sign_up_controller.dart';
import 'package:rewind/resources/app_texts.dart';
import 'package:rewind/widget/dynamic_text.dart';
import 'package:rewind/widget/top_slider.dart';

import '../../../resources/app_images.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final controller = Get.put(SignUpController());

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20, right: 10),
            child: TopSlider(
              firstFilled: true,
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1, 0),
            child: DynamicText(
              text: AppTexts.signUp,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: DynamicText(
              text: AppTexts.signUpWith,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 140,
                height: 50,
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(20, 7, 20, 7),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            AppImages.apple,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5, 0, 0, 0),
                          child: DynamicText(
                            text: AppTexts.appleId,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.googleLogIn(context);
                },
                child: SizedBox(
                  width: 130,
                  height: 50,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(20, 7, 20, 7),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            AppImages.google,
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                          DynamicText(
                            text: AppTexts.google,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 145,
                height: 50,
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(20, 7, 20, 7),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            AppImages.microSoft,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5, 0, 0, 0),
                          child: DynamicText(
                            text: AppTexts.microsoft,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 1.5,
                    decoration: const BoxDecoration(
                      color: Color(0x74757272),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                  child: DynamicText(
                    text: AppTexts.orContinueWith,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 1.5,
                    decoration: const BoxDecoration(
                      color: Color(0x74757272),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1, 0),
            child: DynamicText(
              text: AppTexts.email,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(2)),
                              side: BorderSide(color: Colors.black)))),
                  onPressed: () {
                    controller.gotoNext();
                  },
                  child: DynamicText(
                      text: AppTexts.next,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      )))),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: AppTexts.alreadyAccount),
                  TextSpan(
                    text: AppTexts.login,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}}
