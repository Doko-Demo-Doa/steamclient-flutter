
import 'dart:async';

import 'package:steamclient/api/api_auth.dart';
import 'package:steamclient/locator.dart';

class AuthenticationService {
  ApiAuth _api = locator<ApiAuth>();

  StreamController<bool> authController = new StreamController();

  Future<bool> login(String username, String password) async {
    var resp = await _api.login(username, password);
    authController.add(resp);
    return resp;
  }
}
