class Password {
  String _password = "";

  Password({required String password}) : _password = password;

  set password(String password) {
    _password = password;
  }

  String get password {
    return _password;
  }

  bool isValid() {
    if (_password.length < 8) return false;
    if (!_password.contains(RegExp(r'[A-Z]'))) return false;
    if (!_password.contains(RegExp(r'[a-z]'))) return false;
    if (!_password.contains(RegExp(r'[0-9]'))) return false;
    return true;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
