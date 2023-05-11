import 'package:flutter/material.dart';
import 'package:flutter_session/app_routes.dart';
import 'package:flutter_session/presentation/splash_page/splash_page_binding.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.getPages,
      initialRoute: AppRoutes.splashScreen,
      initialBinding: SplashPageBinding(),
      title: 'Flutter Session',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}