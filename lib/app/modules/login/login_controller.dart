import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email;
  @observable
  String password;
  @observable
  String apiId;

  @action
  changeEmail(String value) => email = value;
  @action
  changePassword(String value) => password = value;
  @action
  changeApiId(String value) => apiId = value;
  @action
  sendForm() => {};

  String getEmail() => (email != null) ? email : '';
  String getPassword() => (password != null) ? password : '';
  String getApiId() => (apiId != null) ? apiId : '';
}
