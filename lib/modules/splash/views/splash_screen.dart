import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: InkWell(
        onTap: (){
          Get.toNamed(Routes.SIGNUP_ADDRESS);
        },
        child: Center(
          child: Text("Hello Word"),
        ),
      ),
    );
  }
}
