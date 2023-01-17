import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController regIdController = TextEditingController();
  TextEditingController businessController = TextEditingController();
  TextEditingController companyAddController = TextEditingController();
  RxString imagePath = ''.obs;
  final ImagePicker picker = ImagePicker();
  final RxBool isEditName = false.obs;
  final RxBool isEditEmail = false.obs;
  final RxBool isEditAddress = false.obs;
  final RxBool isEditPhone = false.obs;
  final RxBool isEditCompanyName = false.obs;
  final RxBool isEditRegId = false.obs;
  final RxBool isEditBusiness = false.obs;
  final RxBool isEditCompanyAdd = false.obs;

  gotoNext() {}

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
