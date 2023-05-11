import 'package:flutter/material.dart';
import 'package:flutter_session/presentation/first_page/first_page_controller.dart';
import 'package:flutter_session/presentation/second_page/second_page_controller.dart';
import 'package:flutter_session/presentation/splash_page/splash_page_controller.dart';
import 'package:get/get.dart';

class SplashPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SplashPageController>(SplashPageController());
  }
}