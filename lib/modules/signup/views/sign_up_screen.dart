import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/signup/controllers/sign_up_controller.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/resources/app_texts.dart';
import 'package:rewind/routes/app_pages.dart';
import 'package:rewind/widget/dynamic_text.dart';
import 'package:rewind/widget/top_slider.dart';

import '../../../resources/app_images.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  final int? type;

  SignUpScreen(this.type, {Key? key}) : super(key: key);

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
                text: (type == 0) ? AppTexts.signUp : AppTexts.login,
                style: const TextStyle(
                    fontFamily: 'SfProFont',
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
            verticalSpacing(15),
            Align(
              alignment: Alignment.topLeft,
              child: DynamicText(
                text: (type == 0) ? AppTexts.signUpWith : AppTexts.signInWith,
                style: const TextStyle(
                  fontFamily: 'SfProFont',
                  fontSize: 14,
                ),
              ),
            ),
            verticalSpacing(20),
            Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    controller.callLoginWithApple();
                  },
                  child: SizedBox(
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
                                fontFamily: 'SfProFont',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    controller.acquireToken();
                  },
                  child: SizedBox(
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
                ),
              ],
            ),
            verticalSpacing(10),
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
                          fontFamily: 'SfProFont',
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
                  fontFamily: 'SfProFont',
                  fontSize: 14,
                ),
              ),
            ),
            verticalSpacing(5),
            CustomTextField(
              contentPadding: const EdgeInsets.all(12),
              errorText: 'pleaseEnterText',
              textColor: Colors.black,
              textInputAction: TextInputAction.done,
              backgroundColour: Colors.white,
              headerTextHint: '',
              txtController: controller.emailController,
              ctx: context,
              onTap: () {},
              visible: false,
            ),
            verticalSpacing(15),
            SimpleRoundedButton(
              onTap: () {
                controller.gotoNext();
              },
              title: AppTexts.next,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DynamicText(
                      text: (type == 0)
                          ? AppTexts.alreadyAccount
                          : AppTexts.createAccount),
                  GestureDetector(
                      onTap: () {
                        if (type == 0) {
                          Get.toNamed(Routes.LOGIN);
                        } else {
                          Get.toNamed(Routes.SIGNUP);
                        }
                      },
                      child: DynamicText(
                        text: (type == 0) ? AppTexts.login : AppTexts.signUp,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
