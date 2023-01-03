
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/signup/controllers/company_details_controller.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/values/text_style.dart';
import 'package:rewind/widget/app_bar.dart';
import 'package:rewind/widget/bottom_signup_text.dart';
import 'package:rewind/widget/custom_button.dart';
import 'package:rewind/widget/custom_textfield.dart';
import 'package:rewind/widget/dynamic_text.dart';

class CompanyDetailsScreen extends StatelessWidget {
   CompanyDetailsScreen({Key? key}) : super(key: key);
  final controller = Get.put(CompanyDetailsController());

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
        child: ListView(
          children: [
            verticalSpacing(25),
            DynamicText(text: 'Company Details (Optional)',style: textStyle25.copyWith(fontSize: 23)),
            verticalSpacing(25),
            const DynamicText(text: 'Company Name (Optional)'),
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
            const DynamicText(text: 'Registration ID'),
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
            const DynamicText(text: 'Field odf business'),
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
            const DynamicText(text: 'Upload Incorporation documents'),
            verticalSpacing(8),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud_upload_outlined),
                    DynamicText(text: 'upload a file', style: textStyle15,),
                    DynamicText(text: 'PNG, JPG, GIF up to 10MB', style: textStyle15.copyWith(fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
            ),
            verticalSpacing(4),
            BottomSignupView(
                        mainText: '',
                        ctaText: 'Skip this step',
                        onTap: () {
                          Get.back();
                        },
                      ),
            SimpleRoundedButton(
              onTap: () {},
              title: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}

