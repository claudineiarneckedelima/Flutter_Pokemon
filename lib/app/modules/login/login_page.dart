import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../components/Field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
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
                  errorText: controller.getEmail,
                  labelText: 'Email',
                  icon: Icons.alternate_email,
                  onChanged: controller.changeEmail,
                  isRequired: true,
                ),
              );
            }),
            Observer(builder: (_) {
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
          ],
        ),
      ),
    );
  }
}
