import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:msal_flutter/msal_flutter.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../routes/app_pages.dart';
import '../../../utils.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

    static const String _authority =
      "https://msalfluttertest.b2clogin.com/tfp/f8cdef31-a31e-4b4a-93e4-5f571e91255a/B2C_1_phonesisu";
  static const String _clientId = "5f6dc9ed-2921-4af3-8cb8-b480d45c325e";
  String _output = 'NONE';
  PublicClientApplication? pca;

  static const String _redirectUri = "msauth.com.example.rewind.rewind2://auth";
  static const String _androidRedirectUri =
      "msauth://uk.co.moodio.msal_flutter_example/TvkGQnk1ERb%2Bl9pB4OeyeWrYmqo%3D";
  static const List<String> scopes = [
    "https://msalfluttertest.onmicrosoft.com/msaltesterapi/All"
  ];

  // final config = MSALPublicClientApplicationConfig(
  //   iosRedirectUri: _redirectUri,
  //   clientId: _clientId,
  //   authority: Uri.parse(_authority),
  // );

  @override
  void onInit() {
    super.onInit();
  }

  gotoNext() {
    Get.toNamed(Routes.OTP);
  }

  //// callLoginWithApple

  void callLoginWithApple() async {
    final applecredential = await FlutterKeychain.get(key: strAppleFname);
    print("apple credential---->$applecredential");
    if (applecredential != null) {
      final displayName = await FlutterKeychain.get(key: strAppleFname);
      final userIdentifier = await FlutterKeychain.get(key: strAppleIdentifier);
      //// signin with apple
    } else {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      final displayName = '${credential.givenName} ${credential.familyName}';
      print("Apple Login : $displayName");
      print("Apple userIdentifier : ${credential.authorizationCode}");
      print("Apple userIdentifier : ${credential.identityToken}");
      print("Apple userIdentifier : ${credential.state}");

      await FlutterKeychain.put(key: strAppleFname, value: displayName);
      await FlutterKeychain.put(key: strAppleIdentifier, value: credential.userIdentifier!);

      //// signin with apple
    }
  }
  acquireToken() async {
    print("called acquiretoken");
    //create the PCA if not already created
    if (pca == null) {
      print("creating pca...");
      pca = await PublicClientApplication.createPublicClientApplication(
          _clientId,
          authority: _authority,
          iosRedirectUri: _redirectUri);
    }

    print("pca created");

    String res;
    try {
      res = await pca!.acquireToken(
          ["https://msalfluttertest.onmicrosoft.com/msaltesterapi/All"]);
      print(res);
    } on MsalUserCancelledException {
      res = "User cancelled";
    } on MsalNoAccountException {
      res = "no account";
    } on MsalInvalidConfigurationException {
      res = "invalid config";
    } on MsalInvalidScopeException {
      res = "Invalid scope";
    } on MsalException {
      res = "Error getting token. Unspecified reason";
    }
    _output = res;
    update();
  }

  _acquireTokenSilently() async {
    if (pca == null) {
      print("initializing pca");
      pca = await PublicClientApplication.createPublicClientApplication(
          _clientId,
          redirectUri: _redirectUri,
          authority: _authority);
    }

    String res;
    try {
      res = await pca!.acquireTokenSilent(
          ["https://msalfluttertest.onmicrosoft.com/msaltesterapi/All"]);
    } on MsalUserCancelledException {
      res = "User cancelled";
    } on MsalNoAccountException {
      res = "no account";
    } on MsalInvalidConfigurationException {
      res = "invalid config";
    } on MsalInvalidScopeException {
      res = "Invalid scope";
    } on MsalException {
      res = "Error getting token silently!";
    }

    print("Got token");
    print(res);

    _output = res;
    update();
  }

 _logout() async {
    print("called logout");
    if (pca == null) {
      pca = await PublicClientApplication.createPublicClientApplication(
          _clientId,
          authority: _authority);
    }

    print("pca is not null");
    String res;
    try {
      await pca!.logout();
      res = "Account removed";
    } on MsalException {
      res = "Error signing out";
    } on PlatformException catch (e) {
      res = "some other exception ${e.toString()}";
    }

    print("setting state");
     _output = res;
     update();
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
