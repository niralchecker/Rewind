import 'package:get/get.dart';
import 'package:rewind/modules/login/views/register_screen.dart';
import 'package:rewind/modules/splash/views/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.REGISTER;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(name: Routes.REGISTER, page: () => const RegisterScreen()),
  ];
}
