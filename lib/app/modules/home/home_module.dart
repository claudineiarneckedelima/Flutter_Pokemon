import 'package:flutterPokemon/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterPokemon/app/modules/home/home_page.dart';
import 'repositories/poke_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutterPokemon/app/shared/utils/constants.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(repository: i.get<PokeRepository>())),
        Bind((i) => PokeRepository(dio: i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
