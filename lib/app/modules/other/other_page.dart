import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'other_controller.dart';

class OtherPage extends StatefulWidget {
  final String title;
  const OtherPage({
    Key key,
    this.title = "Pokemon List - Ability",
  }) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends ModularState<OtherPage, OtherController> {
  final OtherController otherController = Modular.get<OtherController>();

  final String filter = 'ditto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Observer(builder: (_) {
        if (otherController.pokemons.error != null) {
          return Center(
            child: RaisedButton(
                child: Text('Press again'),
                onPressed: () {
                  otherController.fetchAbility();
                }),
          );
        }

        if (otherController.pokemons.value == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        var list = otherController.pokemons.value;

        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(list[index].name),
              );
            });
      }),
    );
  }
}
