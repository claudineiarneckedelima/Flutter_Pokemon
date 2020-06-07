import 'package:mobx/mobx.dart';

part 'user_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  @observable
  String email;
  @observable
  String firstName;
  @observable
  String lastName;
  @observable
  String password;
  @observable
  String confirmPassword;
  @observable
  String oldPassword;
  @observable
  List<String> groups;
  @observable
  Map<String, String> allowed;
  @observable
  Map<String, String> denied;
  @observable
  String enabled;
  @observable
  String apiId;

  @action
  changeEmail(String value) => email = value;
  @action
  changeFirstName(String value) => firstName = value;
  @action
  changeLastName(String value) => lastName = value;
  @action
  changePassword(String value) => password = value;
  @action
  changeConfirmPassword(String value) => confirmPassword = value;
  @action
  changeOldPassword(String value) => oldPassword = value;
  @action
  changeGroups(List<String> value) => groups = value;
  @action
  changeAllowed(Map<String, String> value) => allowed = value;
  @action
  changeDenied(Map<String, String> value) => denied = value;
  @action
  changeEnabled(String value) => enabled = value;
  @action
  changeApiId(String value) => apiId = value;
  @action
  sendForm() => {};

  String getEmail() => (email != null) ? email : '';
  String getFirstName() => (firstName != null) ? firstName : '';
  String getLastName() => (lastName != null) ? lastName : '';
  String getPassword() => (password != null) ? password : '';
  String getConfirmPassword() =>
      (confirmPassword != null) ? confirmPassword : '';
  String getOldPassword() => (oldPassword != null) ? oldPassword : '';
  String getGroups() => (groups != null) ? groups : '';
  String getAllowed() => (allowed != null) ? allowed : '';
  String getDenied() => (denied != null) ? denied : '';
  String getEnabled() => (enabled != null) ? enabled : '';
  String getApiId() => (apiId != null) ? apiId : '';
}
