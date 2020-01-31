import 'package:flutter/material.dart';
import 'package:steamclient/enums/viewstate.dart';

class AuthViewModel with ChangeNotifier {
  AuthState _state = AuthState.Anonymous;
  AuthState get state => _state;

  Future<bool> login(String username, String password) {
    return Future.delayed(Duration(seconds: 2), () {
      _state = AuthState.Authenticated;
      return true;
    });
  }
}
