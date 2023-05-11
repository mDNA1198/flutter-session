import 'package:flutter/material.dart';
import 'package:flutter_session/app_routes.dart';
import 'package:flutter_session/presentation/splash_page/splash_page_controller.dart';
import 'package:get/get.dart';

class SplashPageScreen extends GetView<SplashPageController> {
  const SplashPageScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.toNamed(AppRoutes.firstScreen);
    });
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Hero(tag: 'AppLogoHW', child: Image.asset('images/applogo.png', width: 100, height: 100,))),
      ),
    );
  }
}
