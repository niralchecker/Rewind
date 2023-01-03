import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rewind/routes/app_pages.dart';

class YourDetailsController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  RxString imagePath = ''.obs;
  final ImagePicker picker = ImagePicker();

  gotoNext() {
    Get.toNamed(Routes.COMPANY_DETAILS);
  }

  void imagePickerGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path;
    }
  }

  void imagePickerCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path;
    }
  }
}
