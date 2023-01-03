
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/signup/controllers/signup_address_controller.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/values/text_style.dart';
import 'package:rewind/widget/app_bar.dart';
import 'package:rewind/widget/bottom_signup_text.dart';
import 'package:rewind/widget/custom_button.dart';
import 'package:rewind/widget/custom_textfield.dart';
import 'package:rewind/widget/dynamic_text.dart';

class SignupAddressScreen extends StatelessWidget {
   SignupAddressScreen({Key? key}) : super(key: key);
  final controller = Get.put(SignupAddressController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBarView(
        onTapBack: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacing(25),
            const DynamicText(text: 'Enter your Address',style: textStyle25),
            verticalSpacing(25),
            const DynamicText(text: 'Street'),
            verticalSpacing(4),
            CustomTextField(
              contentPadding: const EdgeInsets.all(12),
              errorText: 'pleaseEnterText1',
              textColor: Colors.black,
              textInputAction: TextInputAction.done,
              backgroundColour: Colors.white,
              headerTextHint: '',
              txtController:
                  controller.streetController,
              ctx: context,
              onTap: () {},
              visible: false,
            ),
             verticalSpacing(25),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DynamicText(text: 'City'),
                      verticalSpacing(4),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller
                            .streetController,
                        ctx: context,
                        onTap: () {},
                        visible: false,
                      ),
                    ],
                  ),
                ),
                horizontalSpacing(15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DynamicText(text: 'Country'),
                      verticalSpacing(4),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller
                            .streetController,
                        ctx: context,
                        onTap: () {},
                        visible: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpacing(25),
            const DynamicText(text: 'Company Address (Optional)', style: textStyle15,),
            verticalSpacing(25),
            const DynamicText(text: 'Street (Optional)'),
            verticalSpacing(4),
            CustomTextField(
              contentPadding: const EdgeInsets.all(12),
              errorText: 'pleaseEnterText1',
              textColor: Colors.black,
              textInputAction: TextInputAction.done,
              backgroundColour: Colors.white,
              headerTextHint: '',
              txtController:
                  controller.streetController,
              ctx: context,
              onTap: () {},
              visible: false,
            ),
            verticalSpacing(25),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DynamicText(text: 'City (Optional)'),
                      verticalSpacing(4),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller
                            .streetController,
                        ctx: context,
                        onTap: () {},
                        visible: false,
                      ),
                    ],
                  ),
                ),
                horizontalSpacing(15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DynamicText(text: 'Country (Optional)'),
                      verticalSpacing(4),
                      CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller
                            .streetController,
                        ctx: context,
                        onTap: () {},
                        visible: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpacing(25),
            SimpleRoundedButton(
              onTap: () {},
              title: 'Next',
            ),
            verticalSpacing(25),
             BottomSignupView(
                        mainText: 'Already have account?',
                        ctaText: 'Log in',
                        onTap: () {
                          Get.back();
                        },
                      ),
          ],
        ),
      ),
    );
  }
}

