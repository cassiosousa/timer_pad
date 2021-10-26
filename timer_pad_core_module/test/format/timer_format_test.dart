import 'package:flutter_test/flutter_test.dart';
import 'package:timer_pad_core_module/timer_pad_core_module.dart';

void main() {
  group("Timer format", () {
    late TimerFormat timerFormat;

    setUp(() {
      timerFormat = TimerFormat();
    });
    test("timer format one second", () {
      const oneSecond = 60;
      final result = timerFormat.displayTimer(oneSecond);
      expect("00:00:01", result);
    });

    test("timer format one minute", () {
      const oneMinute = 60 * 60;
      final result = timerFormat.displayTimer(oneMinute);
      expect("00:01:00", result);
    });

    test("timer format one hour", () {
      const oneMinute = 60 * 60 * 60;
      final result = timerFormat.displayTimer(oneMinute);
      expect("01:00:00", result);
    });

    test("timer format twelve hour", () {
      const oneMinute = 60 * 60 * 60 * 12;
      final result = timerFormat.displayTimer(oneMinute);
      expect("12:00:00", result);
    });

    test("timer format one day", () {
      const oneMinute = 60 * 60 * 60 * 24;
      final result = timerFormat.displayTimer(oneMinute);
      expect("24:00:00", result);
    });
  });
}
