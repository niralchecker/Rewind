import 'package:get/get.dart';
import 'package:rewind/modules/signup/views/company_details_screen.dart';
import 'package:rewind/modules/signup/views/signup_address_screen.dart';
import 'package:rewind/modules/login/views/login_screen.dart';
import 'package:rewind/modules/splash/views/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.COMPANY_DETAILS;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(name: Routes.SIGNUP_ADDRESS, page: () =>  SignupAddressScreen()),
    GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
    GetPage(name: Routes.COMPANY_DETAILS, page: () =>  CompanyDetailsScreen()),
  ];
}
