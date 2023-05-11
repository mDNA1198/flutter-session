import 'package:flutter_session/presentation/fifth_page/fifth_page_binding.dart';
import 'package:flutter_session/presentation/fifth_page/fifth_page_screen.dart';
import 'package:flutter_session/presentation/first_page/first_page_binding.dart';
import 'package:flutter_session/presentation/first_page/first_page_screen.dart';
import 'package:flutter_session/presentation/fourth_page/fourth_page_binding.dart';
import 'package:flutter_session/presentation/fourth_page/fourth_page_screen.dart';
import 'package:flutter_session/presentation/second_page/second_page_binding.dart';
import 'package:flutter_session/presentation/second_page/second_page_screen.dart';
import 'package:flutter_session/presentation/splash_page/splash_page_binding.dart';
import 'package:flutter_session/presentation/splash_page/splash_page_screen.dart';
import 'package:flutter_session/presentation/third_page/third_page_binding.dart';
import 'package:flutter_session/presentation/third_page/third_page_screen.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String splashScreen = '/splash';
  static String firstScreen = '/first_screen';
  static String secondScreen = '/second_screen';
  static String threeScreen = '/third_screen';
  static String fourthScreen = '/fourth_screen';
  static String fifthScreen = '/fifth_screen';

  static final getPages = <GetPage>[
    GetPage(
      name: AppRoutes.splashScreen,
      binding: SplashPageBinding(),
      page: () => const SplashPageScreen(),
    ),
    GetPage(
      name: AppRoutes.firstScreen,
      binding: FirstPageBinding(),
      page: () => const FirstPageScreen(),
    ),
    GetPage(
      name: AppRoutes.secondScreen,
      binding: SecondPageBinding(),
      page: () => const SecondPageScreen(),
    ),
    GetPage(
      name: AppRoutes.threeScreen,
      binding: ThirdPageBinding(),
      page: () => const ThirdPageScreen(),
    ),
    GetPage(
      name: AppRoutes.fourthScreen,
      binding: FourthPageBinding(),
      page: () => const FourthPageScreen(),
    ),
    GetPage(
      name: AppRoutes.fifthScreen,
      binding: FifthPageBinding(),
      page: () => const FifthPageScreen(),
    ),
  ];
}