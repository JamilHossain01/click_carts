import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/text_strings.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TTexSpain extends StatelessWidget {
  const TTexSpain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: TTexts.iAgreeTo),
              TextSpan(
                text: ' ${TTexts.privacyPolicy}',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.primary : TColors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.primary : TColors.white),
              ),
              const TextSpan(text: " ${TTexts.and} "),
              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
