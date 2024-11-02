import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/features/authentication/shop/screens/product_details/product_reviews/widgets/ratting_star.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                  'Genifa Arora',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const TRattingStar(
              rating: 4,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '28 Nov,2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'Users find the app user-friendly with a great product variety and smooth delivery. Suggestions include faster delivery, more payment options, and improved search accuracy',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: "Show more ",
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        const SizedBox(
          height: TSizes.defaultSpace,
        ),
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.spaceBtwItems),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('J`s Store',
                      style: Theme.of(context).textTheme.titleMedium),
                  Text('28 Nov,2024',
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
              const ReadMoreText(
                'Users find the app user-friendly with a great product variety and smooth delivery. Suggestions include faster delivery, more payment options, and improved search accuracy',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: "Show more ",
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: TColors.primary,
                ),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary),
              ),
            ],
          ),
        )
      ],
    );
  }
}
