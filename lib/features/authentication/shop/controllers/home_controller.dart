import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get index => Get.find();

  final carouselCurrentIndex = 0.obs;

  void upadatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
