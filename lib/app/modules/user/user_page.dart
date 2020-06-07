import 'package:flutter/material.dart';
import 'package:flutterPokemon/app/components/DropdownButtonField.dart';
import 'package:flutterPokemon/app/components/Field.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'user_controller.dart';

class UserPage extends StatefulWidget {
  final String title;
  const UserPage({Key key, this.title = "User"}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ModularState<UserPage, UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  left: 8.0,
                  right: 8.0,
                  bottom: 8.0,
                ),
                child: TextInputField(
                  errorText: controller.getFirstName,
                  labelText: 'FirstName',
                  icon: Icons.add,
                  onChanged: controller.changeFirstName,
                  isRequired: true,
                ),
              );
            }),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextInputField(
                  errorText: controller.getLastName,
                  labelText: 'LastName',
                  icon: Icons.add,
                  onChanged: controller.changeLastName,
                  isRequired: true,
                ),
              );
            }),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextInputField(
                  errorText: controller.getEmail,
                  labelText: 'Email',
                  icon: Icons.alternate_email,
                  onChanged: controller.changeEmail,
                  isRequired: true,
                ),
              );
            }),
            Row(
              children: [
                Flexible(
                  child: Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextInputField(
                        errorText: controller.getPassword,
                        labelText: 'Password',
                        icon: Icons.lock_outline,
                        onChanged: controller.changePassword,
                        isRequired: true,
                      ),
                    );
                  }),
                ),
                Flexible(
                  child: Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextInputField(
                        errorText: controller.getConfirmPassword,
                        labelText: 'ConfirmPassword',
                        icon: Icons.lock_outline,
                        onChanged: controller.changeConfirmPassword,
                        isRequired: true,
                      ),
                    );
                  }),
                ),
                Flexible(
                  child: Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextInputField(
                        errorText: controller.getOldPassword,
                        labelText: 'OldPassword',
                        icon: Icons.lock_outline,
                        onChanged: controller.changeOldPassword,
                        isRequired: true,
                      ),
                    );
                  }),
                ),
              ],
            ),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextInputField(
                  errorText: controller.getApiId,
                  labelText: 'Api ID',
                  icon: Icons.star,
                  onChanged: controller.changeApiId,
                  isRequired: true,
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonField(
                icon: Icons.star,
                items: [
                  {
                    'title': 'Enabled',
                    'value': 'true',
                  },
                  {
                    'title': 'Disabled',
                    'value': 'false',
                  }
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Observer(builder: (_) {
                  return RaisedButton(
                    onPressed: (controller.getEmail() == '' ||
                            controller.getPassword() == '' ||
                            controller.getApiId() == '')
                        ? null
                        : () => controller.sendForm(),
                    child: Icon(Icons.check),
                  );
                }),
              ),
            ),
            // DropdownButtonField(),
          ],
        ),
      ),
    );
  }
}
