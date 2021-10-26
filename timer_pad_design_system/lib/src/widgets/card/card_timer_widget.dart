import 'package:flutter/material.dart';
import '../../../pad_design_system.dart';
import '../../adaptative_theme.dart';
import '../../widgets/card/rounded_container_widget.dart';
import '../../widgets/shapes/circle_gradient_border_widget.dart';

class CardTimerWidget extends StatelessWidget {
  final Function()? onTap;
  final Function()? onLongPress;
  final String text;
  const CardTimerWidget(
      {Key? key, this.onTap, this.onLongPress, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(
      Radius.circular(AdaptativeTheme.defaultRounded),
    );
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      borderRadius: borderRadius,
      child: Ink(
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: borderRadius,
        ),
        child: RoundedContainerWidget(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AdaptativeTheme.defaultSpace,
                vertical: AdaptativeTheme.largeSpace),
            height: 105,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(text, style: Theme.of(context).textTheme.headline2),
                    const Icon(Icons.chevron_right),
                  ],
                ),
                Row(
                  children: const [
                    CircleGradientBorderWidget(),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: AdaptativeTheme.defaultSpace),
                        child: Text("Rasion Project"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
