import 'package:flutter/material.dart';
import '../../../pad_design_system.dart';

class RoundedContainerWidget extends StatelessWidget {
  final Widget child;

  const RoundedContainerWidget({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(AdaptativeTheme.normalRounded)),
      ),
      child: child,
    );
  }
}
