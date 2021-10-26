import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_task_module/src/module/pages/details/details_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const DetailsPage()),
      ];
}
