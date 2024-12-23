import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/features/authentication/shop/screens/product_details/product_reviews/widgets/product_overall_screen.dart';
import 'package:j_store/features/authentication/shop/screens/product_details/product_reviews/widgets/ratting_star.dart';
import 'package:j_store/features/authentication/shop/screens/product_details/product_reviews/widgets/user_review_card.dart';
import 'package:j_store/utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Reviews & Ratings',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        showBackArrrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Rating and reviews screen is a helpful touch. It guides users on the importance of leaving feedback, making the feature feel more engaging and purposeful.'),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TOverAllProductRatting(),
              TRattingStar(),
              Text('8,612'),
              UserReviewCard(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              UserReviewCard(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
