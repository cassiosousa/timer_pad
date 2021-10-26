class TimerEntity {
  final int? _duration;

  int? get duration => _duration;

  TimerEntity({int? duration = 0}) : _duration = duration;

  TimerEntity copyWith({required int duration}) {
    return TimerEntity(duration: duration);
  }

  TimerEntity increase({int increase = 60}) => TimerEntity(
      duration: _duration == null ? increase : _duration! + increase);

  @override
  String toString() => 'TimerEntity { duration: "$_duration" }';
}
