import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/colors.dart';

class TRattingStar extends StatelessWidget {
  const TRattingStar({
    super.key,
    this.rating = 3.5,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating, // Rating value (e.g., 5 stars)
      itemSize: 20, // Size of each star
      unratedColor: TColors.grey, // Color for unrated stars
      itemBuilder: (_, __) => const Icon(
        Iconsax.star1, // Icon for each star
        color: TColors.primary, // Color for rated stars
      ),
    );
  }
}
