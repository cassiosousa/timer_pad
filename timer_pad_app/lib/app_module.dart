import 'package:flutter/material.dart';
import 'package:timer_pad/main.dart';
import 'package:timer_pad/pages/activities_page.dart';
import 'package:timer_pad/pages/home_page.dart';
import 'package:timer_pad/pages/productivity_page.dart';
import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_task_module/task_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomePage(), children: [
          ModuleRoute("/task", module: TaskModule()),
          ChildRoute("/activities", child: (_, args) => const ActivitiesPage()),
          ChildRoute("/productivity",
              child: (_, args) => const ProductivityPage()),
        ]),
      ];
}
