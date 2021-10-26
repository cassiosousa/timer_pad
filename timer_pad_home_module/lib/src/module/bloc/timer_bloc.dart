import 'dart:async';
import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_core_module/timer_pad_core_module.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;
  int initialDuration = 216000;
  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(TimerInit(timerEntity: TimerEntity())) {
    on<TimerStarted>(_onTimerStarted);
    on<TimerTicked>(_onTicked);
    on<TimerPause>(_onPaused);
    on<TimerResumed>(_onResumed);
  }

  void _onTimerStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerProgress(timerEntity: event.timerEntity));
    _tickerSubscription?.cancel();

    _tickerSubscription = _ticker.tick().listen((duration) {
      add(TimerTicked(
          timerEntity: TimerEntity(duration: initialDuration + duration)));
    });
  }

  void _onTicked(TimerTicked event, Emitter<TimerState> emit) {
    emit(
      event.timerEntity != null
          ? TimerProgress(timerEntity: event.timerEntity!)
          : TimerComplete(timerEntity: event.timerEntity!),
    );
  }

  void _onPaused(TimerPause event, Emitter<TimerState> emit) {
    if (state is TimerProgress) {
      _tickerSubscription?.pause();
      emit(TimerPaused(timerEntity: state.timerEntity));
    }
  }

  void _onResumed(TimerResumed event, Emitter<TimerState> emit) {
    if (state is TimerPaused) {
      _tickerSubscription?.resume();
      emit(TimerProgress(timerEntity: state.timerEntity));
    }
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}

class Ticker {
  Stream<int> tick({int time = 60}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => x * time)
        .takeWhile((element) => true);
  }
}
