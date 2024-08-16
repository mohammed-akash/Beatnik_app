
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'curved_edge.dart';

class BeatnikCustomEdges extends StatelessWidget {
  const BeatnikCustomEdges({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BeatnikCustomCurvedEdges(),
      child: child,
    );
  }
}