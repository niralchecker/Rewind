import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../routes/app_pages.dart';
import '../../../utils.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

  gotoNext() {
    Get.toNamed(Routes.OTP);
  }

  Future<void> googleLogIn(BuildContext context) async {
    final type = await isSafeToCallApi();
    if (type == 0) {
      await showNoInternetDialog(context, () async {
        await googleLogIn(context);
      });
    } else {
      try {
        await googleSignIn.signOut();
        final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
        if (googleUser != null) {
          final GoogleSignInAuthentication googleAuth =
              await googleUser.authentication;

          final type = await isSafeToCallApi();
          if (type == 0) {
            await showNoInternetDialog(context, () async {
              Get.toNamed(Routes.HOME);
            });
          } else {
            Get.toNamed(Routes.HOME);
          }
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
