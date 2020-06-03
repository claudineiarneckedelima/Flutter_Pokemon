import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterPokemon/app/shared/models/pokemon_model.dart';
import 'package:flutterPokemon/app/shared/repositories/poke_repository.dart';
import 'other_controller.dart';
import 'other_page.dart';

class OtherModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OtherController(repository: i.get<PokeRepository>())),
      ];

  // @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => OtherPage()),
      ];

  static Inject get to => Inject<OtherModule>.of();
}
