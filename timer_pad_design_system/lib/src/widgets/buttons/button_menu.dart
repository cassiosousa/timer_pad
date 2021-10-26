import 'package:flutter/material.dart';

class ButtonMenuWidget extends StatelessWidget {
  final Function()? onTap;
  const ButtonMenuWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Icon(Icons.more_horiz),
    );
  }
}
