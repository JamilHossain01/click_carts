import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/curved_edges/curve_edges.dart';

class TCurveEdgeWidget extends StatelessWidget {
  const TCurveEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurveEdges(),
      child: child, // Provide a fallback in case child is null
    );
  }
}
