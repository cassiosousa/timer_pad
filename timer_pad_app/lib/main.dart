import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';
import 'package:timer_pad/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const TimerPad()));
}

class TimerPad extends StatelessWidget {
  const TimerPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer Pad',
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      darkTheme: themeDark,
      home: Container(),
    ).modular();
  }
}
