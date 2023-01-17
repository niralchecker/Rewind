import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/home/controllers/home_controller.dart';
import 'package:rewind/widget/chart_widget.dart';
import 'package:rewind/widget/drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.black,
        ),
        drawer: DrawerWidget(controller: controller),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("User Logged in Successfully"),
              ChartWidget()
            ],
          ),
        ),
      ),
    );
  }
}
