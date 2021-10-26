import 'package:flutter/material.dart';

class CircleGradientBorderWidget extends StatelessWidget {
  final double height;
  final double width;

  const CircleGradientBorderWidget(
      {Key? key, this.height = 15, this.width = 15})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.deepPurple, Colors.purple[100]!],
        ),
      ),
      child: Container(
        height: height,
        width: width,
        child: OutlinedButton(
          onPressed: () {},
          child: Text(""),
        ),
      ),
    );
  }
}
