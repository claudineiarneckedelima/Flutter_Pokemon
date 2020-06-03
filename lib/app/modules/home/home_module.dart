import 'package:uAuth2/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:uAuth2/app/modules/home/home_page.dart';
import 'package:uAuth2/app/shared/repositories/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(repository: i.get<PokeRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
