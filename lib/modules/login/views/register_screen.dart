import 'package:flutter/material.dart';
import 'package:rewind/modules/login/views/otp_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(
            height: 100,
          ),
          Expanded(child: OtpScreen())
        ],
      ),
    );
  }
}
