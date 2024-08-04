import 'package:flutter/material.dart';
import 'package:flutter_project/pages/home_page.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(HomePage());
          },
          child: Text("GO TO HOME PAGE"),
        ),
      ),
    );
  }
}