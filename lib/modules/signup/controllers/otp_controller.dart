import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rewind/routes/app_pages.dart';

class OtpController extends GetxController {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();

  gotoNext() {
    Get.toNamed(Routes.YOUR_DETAILS);
  }
}
