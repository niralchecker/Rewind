import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rewind/modules/utils/error_toast.dart';
import 'package:rewind/routes/app_pages.dart';

class CompanyDetailsController extends GetxController {
  TextEditingController companyNameController = TextEditingController();
  TextEditingController registrationIdController = TextEditingController();
  TextEditingController fieldController = TextEditingController();
  RxString imagePath = ''.obs;
  final ImagePicker picker = ImagePicker();

  gotoNext() {
    Get.toNamed(Routes.SIGNUP_ADDRESS);
  }

  void imagePickerGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path;
      return;
    }
  }

  void imagePickerCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path;
      return;
    }
  }

  void validation(BuildContext context) {
    if (companyNameController.text.isEmpty) {
      ErrorToast.showErrorToast("Please enter your Company name");
    } else if (registrationIdController.text.isEmpty) {
      ErrorToast.showErrorToast("Please enter your registration Id");
    } else if (fieldController.text.isEmpty) {
      ErrorToast.showErrorToast("Please enter your field");
    } else {
      gotoNext();
    }
  }
}
