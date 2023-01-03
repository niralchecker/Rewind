import 'package:get/get.dart';
import 'package:rewind/modules/signup/views/signup_address_screen.dart';
import 'package:rewind/modules/login/views/login_screen.dart';
import 'package:rewind/modules/splash/views/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.LOGIN;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(name: Routes.SIGNUP_ADDRESS, page: () =>  SignupAddressScreen()),
    GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
  ];
}
