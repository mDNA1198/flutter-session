import 'package:flutter/material.dart';
import 'package:flutter_session/app_routes.dart';
import 'package:flutter_session/presentation/common/common_app_bar.dart';
import 'package:flutter_session/presentation/third_page/third_page_controller.dart';
import 'package:get/get.dart';

class ThirdPageScreen extends GetView<ThirdPageController> {
  const ThirdPageScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: const CommonAppBar(appBarTitle: 'Third Page'),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffA1FFCE), Color(0xffFAFFD1)],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.fourthScreen),
                child: const Text('Go to next screen'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(AppRoutes.fourthScreen),
                  child: const Text('Remove last route and go to next screen'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
