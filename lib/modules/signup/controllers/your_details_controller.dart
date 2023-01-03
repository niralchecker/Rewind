import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/routes/app_pages.dart';

class YourDetailsController extends GetxController {
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  gotoNext() {
    Get.toNamed(Routes.COMPANY_DETAILS);
  }
}