import 'package:flutter/material.dart';
import 'package:quest_server/core/service/authentication.service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService =
      new AuthenticationService();

  Future<String?> signup(
      {required String email, required String password}) async {
    await _authenticationService.signup(email: email, password: password);
  }

  Future<String?> login(
      {required String email, required String password}) async {
    await _authenticationService.login(email: email, password: password);
  }
}
