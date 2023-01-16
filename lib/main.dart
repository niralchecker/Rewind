import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:rewind/routes/app_pages.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: AppPages.initial,
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 150),
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        title: 'Rewind',
        builder: (context, child) => ResponsiveWrapper.builder(
              child,
              minWidth: 375,
              breakpoints: const [
                ResponsiveBreakpoint.autoScale(375, name: MOBILE),
              ],
            ));
  }
}
