import 'package:flutter/material.dart';

import 'company_details_screen.dart';
import 'otp_screen.dart';
import 'sign_up_screen.dart';
import 'signup_address_screen.dart';
import 'your_details_screen.dart';

class SignUpMainScreen extends StatelessWidget {
  SignUpMainScreen({Key? key}) : super(key: key);
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SignUpScreen(0),
          OtpScreen(),
          YourDetailsScreen(),
          CompanyDetailsScreen(),
          SignupAddressScreen()
        ],
      ),
    ));
  }
}
