import 'package:flutter/material.dart';
import 'package:timer_pad_core_module/model/timer_model.dart';
import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';
import 'package:timer_pad_task_module/src/module/bloc/timer_bloc.dart';

class TaskWidget extends StatelessWidget {
  static const taskText = "Task";
  const TaskWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final timerBloc = Modular.get<TimerBloc>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TitleWidget(text: taskText),
            ButtonMenuWidget(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: AdaptativeTheme.defaultSpace),
          child: BlocBuilder<TimerBloc, TimerState>(
            bloc: timerBloc,
            builder: (context, state) {
              final duration = state.timerEntity.duration ?? 0;
              return CardTimerWidget(
                onTap: () {
                  if (state is TimerInit) {
                    timerBloc.add(
                        TimerStarted(timerEntity: TimerEntity(duration: 0)));
                  } else {
                    timerBloc.add(const TimerResumed());
                  }
                },
                onLongPress: () => timerBloc.add(const TimerPause()),
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
