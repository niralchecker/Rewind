import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rewind/modules/login/views/otp_screen.dart';
import 'package:rewind/modules/login/views/sign_up_screen.dart';
import 'package:rewind/resources/app_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            children: [
              Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(AppImages.back)),
              const SizedBox(width: 30),
              SmoothPageIndicator(
                controller: controller,
                count: 5,
                effect: const ExpandingDotsEffect(
                    dotHeight: 5,
                    dotWidth: 12,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.black),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: PageView(
          controller: controller,
          children: <Widget>[
            SignUpScreen(),
            OtpScreen(),
            Container(),
            Container(),
            Container()
          ],
        ))
      ],
    )));
  }
}
