import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/common/styles/widgtes/loaders/animation_loader.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      builder: (context) => PopScope(
        canPop: false,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              TAnimationLoaderWidget(
                text: text,
                animation: animation,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
