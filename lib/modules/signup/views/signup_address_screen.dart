import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/signup/controllers/signup_address_controller.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/values/text_style.dart';
import 'package:rewind/widget/bottom_signup_text.dart';
import 'package:rewind/widget/custom_button.dart';
import 'package:rewind/widget/custom_textfield.dart';
import 'package:rewind/widget/dynamic_text.dart';

import '../../../resources/app_images.dart';
import '../../../widget/top_slider.dart';

class SignupAddressScreen extends StatelessWidget {
  SignupAddressScreen({Key? key}) : super(key: key);
  final controller = Get.put(SignupAddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                GestureDetector(
                  onTap: () => {
                    Get.back()
                  },
                  child: Container(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 10, right: 20),
                      child: SvgPicture.asset(AppImages.back)),
                ),
                const TopSlider(
                  firstFilled: true,
                  secondFilled: true,
                  thirdFilled: true,
                  forthFilled: true,
                  fifthFilled: true,
                ),
              ],
            ),
            verticalSpacing(25),
            const DynamicText(text: 'Enter your Address', style: textStyle25),
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
              txtController: controller.streetController,
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
                        txtController: controller.cityController,
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
                        txtController: controller.countryController,
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
            const DynamicText(
              text: 'Company Address (Optional)',
              style: textStyle15,
            ),
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
              txtController: controller.companyStreetController,
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
                        txtController: controller.companyCityController,
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
                        txtController: controller.companyCountryController,
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
