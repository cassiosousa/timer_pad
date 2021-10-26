import 'package:flutter/material.dart';
import '../../../pad_design_system.dart';

class RoundedContainerWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final double radius;

  const RoundedContainerWidget({
    Key? key,
    required this.child,
    this.radius = AdaptativeTheme.extraRounded,
    this.color = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: child,
    );
  }
}
