import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  static HomeController get index => Get.find();

  final carouselCurrentIndex = 0.obs;

  void upadatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
