import 'package:beatnik/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:beatnik/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:flutter/material.dart'
;
class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BeatnikCustomEdges(
      child: Container(
        color: BeatnikColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
            height: 400,
            child: Stack(
              children: [
                Positioned(
                    top: -100,
                    right: -250,
                    child: BeatnikCircularContainer(
                      backgroundColor: BeatnikColors.textWhite.withOpacity(0.1),
                    )),
                Positioned(
                    top: 100,
                    right: -300,
                    child: BeatnikCircularContainer(
                      backgroundColor: BeatnikColors.textWhite.withOpacity(0.1),
                    )),
                child
              ],
            )),
      ),
    );
  }
}
