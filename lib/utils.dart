import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';


GoogleSignIn googleSignIn = GoogleSignIn(scopes: [
  'email',
  'profile',
]);

Future<int> isSafeToCallApi() async {
  final connectivityResult = await Connectivity().checkConnectivity();
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    return 1;
  } else {
    return 0;
  }
}

Future<void> showNoInternetDialog(BuildContext context, Function doOnCLick) {
  Widget cancelButton =
      TextButton(child: const Text("Cancel"), onPressed: () => Get.back());
  Widget continueButton = TextButton(
    child: const Text("Retry"),
    onPressed: () async {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        doOnCLick();
        Get.back();
      }
    },
  );
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      // title: const Text('AlertDialog Title'),
      content: const Text('Please turn on Internet to Continue'),
      actions: <Widget>[
        cancelButton,
        continueButton,
      ],
    ),
  ).then((value) => print(value));
}
