import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/circuler_container.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/curved_edges/curve_edges_widgets.dart';
import 'package:j_store/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: SizedBox(
          height: 400, // Combine width and height in a single SizedBox
          child: Stack(
            children: [
              Positioned(
                top: -100,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),

              child, // The child widget passed into TPrimaryHeaderContainer
            ],
          ),
        ),
      ),
    );
  }
}
