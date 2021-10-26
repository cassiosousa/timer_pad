part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  final TimerEntity timerEntity;
  const TimerState({required this.timerEntity});

  @override
  List<Object> get props => [timerEntity];
}

class TimerProgress extends TimerState {
  const TimerProgress({required TimerEntity timerEntity})
      : super(timerEntity: timerEntity);
}

class TimerInit extends TimerState {
  const TimerInit({required TimerEntity timerEntity})
      : super(timerEntity: timerEntity);
  @override
  String toString() => 'TimerInitial { duration: $timerEntity }';
}

class TimerPaused extends TimerState {
  const TimerPaused({required TimerEntity timerEntity})
      : super(timerEntity: timerEntity);
  @override
  String toString() => 'TimerPaused { duration: $timerEntity }';
}

class TimerComplete extends TimerState {
  const TimerComplete({required TimerEntity timerEntity})
      : super(timerEntity: timerEntity);
  @override
  String toString() => 'TimerComplete { duration: $timerEntity }';
}
