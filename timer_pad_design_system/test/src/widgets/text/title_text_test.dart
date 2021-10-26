import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';

void main() {
  
  
  testWidgets('Show title with text Task', (WidgetTester tester) async {
    const taskText = "Task";
    await tester.pumpWidget(
        MaterialApp(theme: themeLight, home: TitleWidget(text: taskText)));
    final taskTextWidget = find.text(taskText);
    expect(taskTextWidget, findsOneWidget);
  });
  testWidgets('Show title light theme', (WidgetTester tester) async {
    const taskText = "Task";
    await tester.pumpWidget(
        MaterialApp(theme: themeLight, home: TitleWidget(text: taskText)));
    final taskTextWidget = find.text(taskText);
    final text = taskTextWidget.evaluate().single.widget as Text;
    expect(text.style?.fontSize ?? 0, 24.0);
    expect(text.style?.color, Colors.black);
  });

  testWidgets('Show title dark theme', (WidgetTester tester) async {
    const taskText = "Task";
    await tester.pumpWidget(
        MaterialApp(theme: themeDark, home: TitleWidget(text: taskText)));
    final taskTextWidget = find.text(taskText);
    final text = taskTextWidget.evaluate().single.widget as Text;
    expect(text.style?.fontSize ?? 0, 24.0);
    expect(text.style?.color, Colors.white);
  });
}
