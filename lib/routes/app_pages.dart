import 'package:get/get.dart';
import 'package:rewind/modules/home/views/home_screen.dart';
import 'package:rewind/modules/signup/views/company_details_screen.dart';
import 'package:rewind/modules/signup/views/otp_screen.dart';
import 'package:rewind/modules/signup/views/sign_up_main_screen.dart';
import 'package:rewind/modules/signup/views/signup_address_screen.dart';
import 'package:rewind/modules/signup/views/your_details_screen.dart';
import 'package:rewind/modules/splash/views/splash_screen.dart';

import '../modules/signup/views/sign_up_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.SIGNUP_MAIN;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(name: Routes.SIGNUP, page: () => SignUpScreen()),
    GetPage(name: Routes.SIGNUP_ADDRESS, page: () => SignupAddressScreen()),
    GetPage(name: Routes.COMPANY_DETAILS, page: () => CompanyDetailsScreen()),
    GetPage(name: Routes.YOUR_DETAILS, page: () => YourDetailsScreen()),
    GetPage(name: Routes.OTP, page: () => OtpScreen()),
    GetPage(name: Routes.SIGNUP_MAIN, page: () => SignUpMainScreen()),
    GetPage(name: Routes.HOME, page: () => HomeScreen()),
  ];
}
