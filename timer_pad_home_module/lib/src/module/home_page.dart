import 'package:flutter/material.dart';
import 'package:timer_pad_core_module/model/timer_model.dart';
import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';
import 'package:timer_pad_home_module/src/module/bloc/timer_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          margin: const EdgeInsets.fromLTRB(
            AdaptativeTheme.defaultSpace,
            AdaptativeTheme.extraSpace,
            AdaptativeTheme.defaultSpace,
            AdaptativeTheme.noneSpace,
          ),
          child: Center(
            child: Column(
              children: [
                TaskWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  static const taskText = "Task";
  const TaskWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWidget(text: taskText),
            const ButtonMenuWidget(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: AdaptativeTheme.largeSpace),
          child: BlocBuilder<TimerBloc, TimerState>(
            bloc: Modular.get<TimerBloc>(),
            builder: (context, state) {
              final duration = state.timerEntity.duration ?? 0;
              return CardTimerWidget(
                onTap: () {
                  final timerBloc = Modular.get<TimerBloc>();
                  if (state is TimerInit) {
                    timerBloc.add(
                        TimerStarted(timerEntity: TimerEntity(duration: 0)));
                  } else {
                    timerBloc.add(const TimerResumed());
                  }
                },
                onLongPress: () =>
                    Modular.get<TimerBloc>().add(const TimerPause()),
                text:
                    "${hourFormat(duration)}:${minutesFormat(duration)}:${secondsFormat(duration)}",
              );
            },
          ),
        )
      ],
    );
  }

  String hourFormat(int duration) {
    return (((duration / 60 / 60 / 60) % 60))
        .floor()
        .toString()
        .padLeft(2, '0');
  }

  String minutesFormat(int duration) {
    return (((duration / 60 / 60) % 60)).floor().toString().padLeft(2, '0');
  }

  String secondsFormat(int duration) {
    return ((duration / 60) % 60).floor().toString().padLeft(2, '0');
  }
}
