import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/features/authentication/shop/controllers/home_controller.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TPromoCaroSlider extends StatelessWidget {
  const TPromoCaroSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => TRoundImage(imageUrl: url)).toList(),
          options: CarouselOptions(
              onPageChanged: (index, _) =>
                  controller.upadatePageIndicator(index),
              autoPlay: false,
              viewportFraction: 1),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TRoundedContainer(
                    height: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
