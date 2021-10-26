import 'package:flutter/material.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';

class TitleTagWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const TitleTagWidget({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(AdaptativeTheme.minExtraSpace),
      height: AdaptativeTheme.largeSpace,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(AdaptativeTheme.minRounded),
        ),
      ),
      child: Text(
        text,
        style:
            Theme.of(context).textTheme.subtitle1?.copyWith(color: textColor),
      ),
    );
  }
}
