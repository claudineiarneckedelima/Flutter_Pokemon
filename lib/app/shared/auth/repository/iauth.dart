abstract class IAuth {
  Future getUser();
  Future getLogin();
  Future getLoginFacebook();
  Future getPasswordFacebook();
  Future<String> getToken();
}
