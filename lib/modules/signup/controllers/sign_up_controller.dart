import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

  gotoNext() {
    Get.toNamed(Routes.OTP);
  }
}
