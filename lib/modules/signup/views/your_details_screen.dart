import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/signup/controllers/your_details_controller.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/values/text_style.dart';
import 'package:rewind/widget/app_bar.dart';
import 'package:rewind/widget/bottom_gallery_sheet.dart';
import 'package:rewind/widget/bottom_signup_text.dart';
import 'package:rewind/widget/custom_button.dart';
import 'package:rewind/widget/custom_textfield.dart';
import 'package:rewind/widget/dynamic_text.dart';

class YourDetailsScreen extends StatelessWidget {
  YourDetailsScreen({Key? key}) : super(key: key);
  final controller = Get.put(YourDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            DynamicText(
                text: 'Enter your Details',
                style: textStyle25.copyWith(fontSize: 23)),
            verticalSpacing(25),
            const DynamicText(text: 'Full name'),
            verticalSpacing(4),
            CustomTextField(
              contentPadding: const EdgeInsets.all(12),
              errorText: 'pleaseEnterText1',
              textColor: Colors.black,
              textInputAction: TextInputAction.done,
              backgroundColour: Colors.white,
              headerTextHint: '',
              txtController: controller.nameController,
              ctx: context,
              onTap: () {},
              visible: false,
            ),
            verticalSpacing(25),
            const DynamicText(text: 'Phone'),
            verticalSpacing(4),
            CustomTextField(
              contentPadding: const EdgeInsets.all(12),
              errorText: 'pleaseEnterText1',
              textColor: Colors.black,
              textInputAction: TextInputAction.done,
              backgroundColour: Colors.white,
              headerTextHint: '',
              txtController: controller.phoneController,
              ctx: context,
              onTap: () {},
              visible: false,
            ),
            verticalSpacing(25),
            Row(
              children: [
                const DynamicText(text: 'ID Scan'),
                Obx(
                  () => Visibility(
                    visible: controller.imagePath.value.isNotEmpty,
                    child: IconButton(
                        onPressed: () {
                          ModelBottomSheet().bottom(
                            'Support',
                            'Camera',
                            'Gallery',
                            'Cancel',
                            Icons.camera_alt,
                            Icons.photo_library_rounded,
                            Icons.close,
                            () {
                              controller.imagePickerCamera();
                              Get.back();
                            },
                            () {
                              controller.imagePickerGallery();
                              Get.back();
                            },
                            () {
                              Get.back();
                            },
                          );
                        },
                        icon: Icon(Icons.cloud_upload_outlined)),
                  ),
                )
              ],
            ),
            verticalSpacing(8),
            Obx(
              () => Visibility(
                visible: controller.imagePath.value.isNotEmpty,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      child: Container(
                        height: Get.size.height * 0.2,
                        width: Get.size.width * 0.26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          // color: Colors.pink,
                          image: controller.imagePath.value.isEmpty
                              ? null
                              : DecorationImage(
                                  image: FileImage(
                                      File(controller.imagePath.value)),
                                  fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Visibility(
                visible: controller.imagePath.value.isEmpty ? true : false,
                child: InkWell(
                  onTap: () {
                    ModelBottomSheet().bottom(
                      'Support',
                      'Camera',
                      'Gallery',
                      'Cancel',
                      Icons.camera_alt,
                      Icons.photo_library_rounded,
                      Icons.close,
                      () {
                        controller.imagePickerCamera();
                        Get.back();
                      },
                      () {
                        controller.imagePickerGallery();
                        Get.back();
                      },
                      () {
                        Get.back();
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.cloud_upload_outlined),
                          DynamicText(
                            text: 'upload a file',
                            style: textStyle15,
                          ),
                          DynamicText(
                            text: 'PNG, JPG, GIF up to 10MB',
                            style: textStyle15.copyWith(
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            verticalSpacing(25),
            SimpleRoundedButton(
              onTap: () {
                controller.gotoNext();
              },
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
