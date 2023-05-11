import 'package:flutter/material.dart';
import 'package:flutter_session/presentation/first_page/first_page_controller.dart';
import 'package:get/get.dart';

class FirstPageScreen extends GetView<FirstPageController> {
  const FirstPageScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0 ,
          backgroundColor: Colors.white,
          shadowColor: Colors.orange,
          title: const Text('First Page'),
          elevation: 5.0,
          leading: SizedBox(height: 20, width: 20, child: Hero(tag: 'AppLogoHW', child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('images/applogo.png'),
          ))),
        ),
        body: Container(),
      ),
    );
  }
}
