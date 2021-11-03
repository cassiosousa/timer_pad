import 'package:flutter/material.dart';
import 'package:timer_pad_core_module/model/timer_model.dart';
import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';
import 'package:timer_pad_task_module/src/module/bloc/timer_bloc.dart';
import 'package:timer_pad_task_module/src/module/pages/home/widgets/task_widget.dart';
import 'package:timer_pad_task_module/src/module/pages/home/widgets/today_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        AdaptativeTheme.defaultSpace,
        60,
        AdaptativeTheme.defaultSpace,
        AdaptativeTheme.noneSpace,
      ),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: AdaptativeTheme.defaultSpace),
            child: TaskWidget(),
          ),
          Expanded(child: TodayWidget()),
        ],
      ),
    );
  }
}
