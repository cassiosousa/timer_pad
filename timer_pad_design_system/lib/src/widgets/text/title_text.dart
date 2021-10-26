import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String text;

  TitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
