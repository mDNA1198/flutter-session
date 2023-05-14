import 'package:get/get.dart';

class FirstPageController extends GetxController{
  RxInt tapCount = 0.obs;

  void increaseTapCount() => tapCount++;
}