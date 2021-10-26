import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:timer_pad_core_module/timer_pad_core_module.dart';
import 'package:timer_pad_task_module/src/module/bloc/timer_bloc.dart';

void main() {
  group("Timer block testing", () {
    late TimerBloc timerBloc;

    setUp(() {
      timerBloc = TimerBloc(ticker: Ticker());
    });

    test("Timer block initial state", () {
      expect(timerBloc.state.timerEntity.duration, TimerEntity().duration);
    });

    blocTest<TimerBloc, TimerState>(
      "emits start timer count one event",
      build: () => timerBloc,
      act: (bloc) => bloc.add(const TimerStarted(
        timerEntity: TimerEntity(),
      )),
      expect: () =>
          const [TimerProgress(timerEntity: TimerEntity(duration: 0))],
    );

    blocTest<TimerBloc, TimerState>(
      "emits start timer count four event",
      build: () => timerBloc,
      act: (bloc) async {
        bloc.add(const TimerStarted(
          timerEntity: TimerEntity(),
        ));
      },
      wait: const Duration(seconds: 4),
      expect: () => const [
        TimerProgress(timerEntity: TimerEntity(duration: 0)),
        TimerProgress(timerEntity: TimerEntity(duration: 60)),
        TimerProgress(timerEntity: TimerEntity(duration: 120)),
        TimerProgress(timerEntity: TimerEntity(duration: 180)),
      ],
    );

    blocTest<TimerBloc, TimerState>(
      "emits start timer count with pause event",
      build: () => TimerBloc(ticker: Ticker()),
      act: (bloc) async {
        bloc.add(const TimerStarted(timerEntity: TimerEntity(duration: 60)));
        bloc.add(const TimerPause());
      },
      expect: () => const [
        TimerProgress(timerEntity: TimerEntity(duration: 60)),
        TimerPaused(timerEntity: TimerEntity(duration: 60)),
      ],
    );

    blocTest<TimerBloc, TimerState>(
      "emits start timer count with pause and resume event",
      build: () => TimerBloc(ticker: Ticker()),
      act: (bloc) async {
        bloc.add(const TimerStarted(timerEntity: TimerEntity(duration: 180)));
        bloc.add(const TimerPause());
        bloc.add(const TimerPause());
        bloc.add(const TimerResumed());
      },
      expect: () => const [
        TimerProgress(timerEntity: TimerEntity(duration: 180)),
        TimerPaused(timerEntity: TimerEntity(duration: 180)),
        TimerProgress(timerEntity: TimerEntity(duration: 180)),
      ],
    );
  });
}
