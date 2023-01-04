import 'package:flutter/material.dart';
import 'package:rewind/widget/chart_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("User Logged in Successfully"), ChartWidget()],
        ),
      ),
    );
  }
}
