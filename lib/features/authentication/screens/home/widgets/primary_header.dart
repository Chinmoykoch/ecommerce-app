import 'package:ecommerce/common/widgets/custom_shapes/curved_edges.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader({super.key, required Container child});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdge(),
          ],
        ),
      ),
    );
  }
}

class CurvedEdge extends StatelessWidget {
  const CurvedEdge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: Container(
        color: Tcolors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 400,
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                color: Tcolors.textWhite.withOpacity(0.1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
