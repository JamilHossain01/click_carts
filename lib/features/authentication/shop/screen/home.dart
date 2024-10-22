import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/curve_edge_conatiner_widgets.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/customp_appbar.dart';
import 'package:j_store/features/authentication/screens/login/signin/auth_inner_screen/widgets/text_spain.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TTexts.homeAppbarTitle,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: TColors.grey),
                      ),
                      Text(TTexts.homeAppbarSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white))
                    ],
                  ),
                  action: [
                    Stack(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Iconsax.shopping_bag,
                            )),
                        Positioned(
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                '2',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .apply(color: TColors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
