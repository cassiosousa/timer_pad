part of 'timer_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class TimerStarted extends TimerEvent {
  final TimerEntity timerEntity;
  const TimerStarted({required this.timerEntity});
}

class TimerPause extends TimerEvent {
  const TimerPause();
}

class TimerResumed extends TimerEvent {
  const TimerResumed();
}

class TimerReset extends TimerEvent {
  const TimerReset();
}

class TimerTicked extends TimerEvent {
  final TimerEntity? timerEntity;
  const TimerTicked({required this.timerEntity});

  @override
  List<Object> get props => timerEntity != null ? [timerEntity!] : [];
}
