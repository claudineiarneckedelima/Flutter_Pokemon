import 'package:flutter_modular/flutter_modular.dart';
import 'repositories/poke_repository.dart';
import 'other_controller.dart';
import 'other_page.dart';
import 'package:dio/dio.dart';
import 'package:flutterPokemon/app/shared/utils/constants.dart';

class OtherModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OtherController(repository: i.get<PokeRepository>())),
        Bind((i) => PokeRepository(dio: i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  // @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => OtherPage()),
      ];

  static Inject get to => Inject<OtherModule>.of();
}
