import 'package:flutter/material.dart';
import 'package:flutter_session/app_routes.dart';
import 'package:flutter_session/presentation/common/common_app_bar.dart';
import 'package:flutter_session/presentation/fifth_page/fifth_page_controller.dart';
import 'package:get/get.dart';

class FifthPageScreen extends GetView<FifthPageController> {
  const FifthPageScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: const CommonAppBar(appBarTitle: 'Fifth Page'),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: ElevatedButton(
                  onPressed: () => Get.back(),
                  child: const Text('Go Back'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
