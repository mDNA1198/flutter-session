import 'package:flutter/material.dart';
import 'package:flutter_session/app_routes.dart';
import 'package:flutter_session/presentation/common/common_app_bar.dart';
import 'package:flutter_session/presentation/first_page/first_page_controller.dart';
import 'package:get/get.dart';

class FirstPageScreen extends GetView<FirstPageController> {
  const FirstPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: const CommonAppBar(appBarTitle: 'First Page'),
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
              Obx(() => Text('Tap Count = ${controller.tapCount}')),
              ElevatedButton(
                onPressed: controller.increaseTapCount,
                child: const Text(
                  'Tap to increase count',
                ),
              ),
              ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.secondScreen),
                child: const Text('Go to next screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
