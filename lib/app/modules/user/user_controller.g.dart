// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserController on _UserControllerBase, Store {
  final _$emailAtom = Atom(name: '_UserControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$firstNameAtom = Atom(name: '_UserControllerBase.firstName');

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_UserControllerBase.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$passwordAtom = Atom(name: '_UserControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$confirmPasswordAtom =
      Atom(name: '_UserControllerBase.confirmPassword');

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  final _$oldPasswordAtom = Atom(name: '_UserControllerBase.oldPassword');

  @override
  String get oldPassword {
    _$oldPasswordAtom.reportRead();
    return super.oldPassword;
  }

  @override
  set oldPassword(String value) {
    _$oldPasswordAtom.reportWrite(value, super.oldPassword, () {
      super.oldPassword = value;
    });
  }

  final _$groupsAtom = Atom(name: '_UserControllerBase.groups');

  @override
  List<String> get groups {
    _$groupsAtom.reportRead();
    return super.groups;
  }

  @override
  set groups(List<String> value) {
    _$groupsAtom.reportWrite(value, super.groups, () {
      super.groups = value;
    });
  }

  final _$allowedAtom = Atom(name: '_UserControllerBase.allowed');

  @override
  Map<String, String> get allowed {
    _$allowedAtom.reportRead();
    return super.allowed;
  }

  @override
  set allowed(Map<String, String> value) {
    _$allowedAtom.reportWrite(value, super.allowed, () {
      super.allowed = value;
    });
  }

  final _$deniedAtom = Atom(name: '_UserControllerBase.denied');

  @override
  Map<String, String> get denied {
    _$deniedAtom.reportRead();
    return super.denied;
  }

  @override
  set denied(Map<String, String> value) {
    _$deniedAtom.reportWrite(value, super.denied, () {
      super.denied = value;
    });
  }

  final _$enabledAtom = Atom(name: '_UserControllerBase.enabled');

  @override
  String get enabled {
    _$enabledAtom.reportRead();
    return super.enabled;
  }

  @override
  set enabled(String value) {
    _$enabledAtom.reportWrite(value, super.enabled, () {
      super.enabled = value;
    });
  }

  final _$apiIdAtom = Atom(name: '_UserControllerBase.apiId');

  @override
  String get apiId {
    _$apiIdAtom.reportRead();
    return super.apiId;
  }

  @override
  set apiId(String value) {
    _$apiIdAtom.reportWrite(value, super.apiId, () {
      super.apiId = value;
    });
  }

  final _$_UserControllerBaseActionController =
      ActionController(name: '_UserControllerBase');

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeFirstName(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeFirstName');
    try {
      return super.changeFirstName(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeLastName');
    try {
      return super.changeLastName(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeConfirmPassword(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeConfirmPassword');
    try {
      return super.changeConfirmPassword(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeOldPassword(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeOldPassword');
    try {
      return super.changeOldPassword(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeGroups(List<String> value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeGroups');
    try {
      return super.changeGroups(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeAllowed(Map<String, String> value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeAllowed');
    try {
      return super.changeAllowed(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDenied(Map<String, String> value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeDenied');
    try {
      return super.changeDenied(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEnabled(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeEnabled');
    try {
      return super.changeEnabled(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeApiId(String value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.changeApiId');
    try {
      return super.changeApiId(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic sendForm() {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.sendForm');
    try {
      return super.sendForm();
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
firstName: ${firstName},
lastName: ${lastName},
password: ${password},
confirmPassword: ${confirmPassword},
oldPassword: ${oldPassword},
groups: ${groups},
allowed: ${allowed},
denied: ${denied},
enabled: ${enabled},
apiId: ${apiId}
    ''';
  }
}
