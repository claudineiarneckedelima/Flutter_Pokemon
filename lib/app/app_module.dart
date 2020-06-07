import 'package:flutterPokemon/app/pages/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutterPokemon/app/app_widget.dart';
import 'package:flutterPokemon/app/modules/home/home_module.dart';
import 'package:flutterPokemon/app/shared/utils/constants.dart';
import '../app/pages/splash/splash_page.dart';
import 'modules/other/other_module.dart';
import 'modules/login/login_module.dart';
import 'modules/user/user_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashPage()),
        Router('/home', module: HomeModule()),
        Router('/login', module: LoginModule()),
        Router('/other', module: OtherModule()),
        Router('/user', module: UserModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
