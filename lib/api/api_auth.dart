class ApiAuth {
  Future<bool> login(String username, String password) {
    return Future.delayed(Duration(seconds: 2), () {
      return true;
    });
  }
}