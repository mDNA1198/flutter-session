import 'package:flutter/material.dart';
import 'package:flutter_session/presentation/fifth_page/fifth_page_controller.dart';
import 'package:flutter_session/presentation/first_page/first_page_controller.dart';
import 'package:get/get.dart';

class FifthPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<FifthPageController>(FifthPageController());
  }
}