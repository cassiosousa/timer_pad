import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_home_module/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
