class TimerFormat {
  String displayTimer(int duration) =>
      "${_hourFormat(duration)}:${_minutesFormat(duration)}:${_secondsFormat(duration)}";

  String _hourFormat(int duration) {
    return (((duration / 60 / 60 / 60) % 60))
        .floor()
        .toString()
        .padLeft(2, '0');
  }

  String _minutesFormat(int duration) {
    return (((duration / 60 / 60) % 60)).floor().toString().padLeft(2, '0');
  }

  String _secondsFormat(int duration) {
    return ((duration / 60) % 60).floor().toString().padLeft(2, '0');
  }
}
