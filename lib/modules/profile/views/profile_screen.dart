import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/profile/controllers/profile_controller.dart';

import '../../../values/text_style.dart';
import '../../../widget/bottom_gallery_sheet.dart';
import '../../../widget/custom_outlined_button.dart';
import '../../../widget/custom_textfield.dart';
import '../../../widget/drawer.dart';
import '../../../widget/dynamic_text.dart';
import '../../home/controllers/home_controller.dart';
import '../../utils/helper.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final controller = Get.put(ProfileController());
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          backgroundColor: Colors.black,
        ),
        drawer: DrawerWidget(controller: homeController),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(shrinkWrap: true, children: [
            verticalSpacing(25),
            Center(
              child: DynamicText(
                  text: 'Profile', style: textStyle25.copyWith(fontSize: 23)),
            ),
            verticalSpacing(25),
            Obx(() => (controller.imagePath.value != '')
                ? CircleAvatar(
                    backgroundImage:
                        FileImage(File(controller.imagePath.value)),
                    radius: 50.0,
                  )
                : Center(
                    child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                          border: Border.all(
                            width: 3,
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                        )),
                  )),
            verticalSpacing(15),
            Center(
              child: SimpleOutlinedButton(
                height: 30,
                width: 120,
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
                title: 'Change Photo',
                borderRadius: 10,
              ),
            ),
            const DynamicText(text: 'Name'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.nameController,
                        ctx: context,
                        onTap: () {},
                        enable: controller.isEditName.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditName.value == true
                          ? "Save"
                          : "Change Name",
                      onTap: () {
                        if (controller.isEditName.value == true) {
                          controller.isEditName.value = false;
                        } else {
                          controller.isEditName.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Email'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.emailController,
                        ctx: context,
                        onTap: () {},
                        enable: controller.isEditEmail.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditEmail.value
                          ? "Save"
                          : "Change Email",
                      onTap: () {
                        if (controller.isEditEmail.value) {
                          controller.isEditEmail.value = false;
                        } else {
                          controller.isEditEmail.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Address'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.addressController,
                        ctx: context,
                        onTap: () {},
                        enable: controller.isEditAddress.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditAddress.value
                          ? "Save"
                          : "Change Address",
                      onTap: () {
                        if (controller.isEditAddress.value) {
                          controller.isEditAddress.value = false;
                        } else {
                          controller.isEditAddress.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Phone Number'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.phoneController,
                        ctx: context,
                        onTap: () {},
                        textInputType: TextInputType.number,
                        enable: controller.isEditPhone.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditPhone.value
                          ? "Save"
                          : "Change Number",
                      onTap: () {
                        if (controller.isEditPhone.value) {
                          controller.isEditPhone.value = false;
                        } else {
                          controller.isEditPhone.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Company Name'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.companyNameController,
                        ctx: context,
                        onTap: () {},
                        enable: controller.isEditCompanyName.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditCompanyName.value == true
                          ? "Save"
                          : "Change Name",
                      onTap: () {
                        if (controller.isEditCompanyName.value == true) {
                          controller.isEditCompanyName.value = false;
                        } else {
                          controller.isEditCompanyName.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Registration ID'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.regIdController,
                        ctx: context,
                        onTap: () {},
                        enable: controller.isEditRegId.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditRegId.value == true
                          ? "Save"
                          : "Change Name",
                      onTap: () {
                        if (controller.isEditRegId.value == true) {
                          controller.isEditRegId.value = false;
                        } else {
                          controller.isEditRegId.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Field of Business'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.businessController,
                        ctx: context,
                        onTap: () {},
                        enable: controller.isEditBusiness.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditBusiness.value == true
                          ? "Save"
                          : "Change Name",
                      onTap: () {
                        if (controller.isEditBusiness.value == true) {
                          controller.isEditBusiness.value = false;
                        } else {
                          controller.isEditBusiness.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Company Address'),
            verticalSpacing(4),
            Obx(() => Row(
                  children: <Widget>[
                    Flexible(
                      child: CustomTextField(
                        contentPadding: const EdgeInsets.all(12),
                        errorText: 'pleaseEnterText1',
                        textColor: Colors.black,
                        textInputAction: TextInputAction.done,
                        backgroundColour: Colors.white,
                        headerTextHint: '',
                        txtController: controller.companyAddController,
                        ctx: context,
                        onTap: () {},
                        enable: controller.isEditCompanyAdd.value,
                        visible: false,
                      ),
                    ),
                    horizontalSpacing(10),
                    SimpleOutlinedButton(
                      height: 30,
                      width: 100,
                      title: controller.isEditCompanyAdd.value == true
                          ? "Save"
                          : "Change Name",
                      onTap: () {
                        if (controller.isEditCompanyAdd.value == true) {
                          controller.isEditCompanyAdd.value = false;
                        } else {
                          controller.isEditCompanyAdd.value = true;
                        }
                      },
                      fontSize: 12,
                      borderRadius: 5,
                    )
                  ],
                )),
            verticalSpacing(25),
            const DynamicText(text: 'USER ID'),
            verticalSpacing(8),
            Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                )),
            verticalSpacing(25),
            const DynamicText(text: 'Incorporation Document'),
            verticalSpacing(8),
            Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                )),
            verticalSpacing(30),
          ]),
        ));
  }
}
