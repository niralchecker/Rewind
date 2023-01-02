import 'package:get/get.dart';
import 'package:rewind/modules/splash/views/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
  ];
}
