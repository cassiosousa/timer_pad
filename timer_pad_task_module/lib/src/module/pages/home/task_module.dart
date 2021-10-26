import 'package:timer_pad_core_module/timer_pad_core_module.dart';
import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_task_module/src/module/bloc/timer_bloc.dart';
import 'package:timer_pad_task_module/src/module/pages/home/task_page.dart';

class TaskModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => Ticker()),
        Bind.singleton((i) => TimerBloc(ticker: i())),
        Bind.factory((i) => TimerFormat())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
