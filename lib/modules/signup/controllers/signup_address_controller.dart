import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignupAddressController extends GetxController {
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController companyStreetController = TextEditingController();
  TextEditingController companyCityController = TextEditingController();
  TextEditingController companyCountryController = TextEditingController();

  gotoNext() {
    Get.toNamed(Routes.HOME);
  }
}
