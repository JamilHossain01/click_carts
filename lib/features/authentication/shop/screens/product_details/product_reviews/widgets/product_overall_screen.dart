import 'package:flutter/material.dart';
import 'package:j_store/features/authentication/shop/screens/product_details/product_reviews/widgets/rating_progress_indicator.dart';

class TOverAllProductRatting extends StatelessWidget {
  const TOverAllProductRatting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            '4.6',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(
                value: 1,
                text: '5',
              ),
              TRatingProgressIndicator(
                value: 0.8,
                text: '4',
              ),
              TRatingProgressIndicator(
                value: 0.6,
                text: '3',
              ),
              TRatingProgressIndicator(
                value: 0.4,
                text: '2',
              ),
              TRatingProgressIndicator(
                value: 0.2,
                text: '1',
              ),
              // Add more rows here for other rating levels (4, 3, 2, 1).
            ],
          ),
        ),
      ],
    );
  }
}
