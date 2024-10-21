
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.grey : TColors.darkGrey,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(TTexts.orSignInWith),
        Flexible(
          child: Divider(
            color: dark ? TColors.grey : TColors.darkGrey,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}