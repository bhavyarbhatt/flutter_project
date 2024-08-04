import 'package:flutter/material.dart';
import 'package:flutter_project/controller/app_controller.dart';
import 'package:flutter_project/pages/about_us.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());

    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "Downloading Completed",
                        "Your Song",
                      );
                    },
                    child: Text("SNAKE BAR"),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "ALERT",
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Do you want to Delete?"),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () => Get.back(),
                        child: Text("Cancel"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add your delete action here
                          Get.back();
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  );
                },
                child: Text("Dialog Box"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offAll(AboutPage());
                },
                child: Text("Go to New Page"),
              ),
              InkWell(
                onTap: () {
                },
                child: Icon(
                  Icons.add,
                  size: 70,
                ),
              ),
              Obx(
                () => Text(
                  "2",
                  // appController.n.toString(),
                  style: TextStyle(fontSize: 70),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Icon(
                  Icons.arrow_back,
                  size: 70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
