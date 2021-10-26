import 'package:flutter/material.dart';

class CircleIconWidget extends StatelessWidget {
  final Color backgroundColor;
  const CircleIconWidget({Key? key, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: Colors.white,
      child: const Icon(Icons.work),
    );
  }
}
