import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final username = jsonDecode(userData)['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final areCredentialsValid = await checkCredentials();
    print('There is a user: $areCredentialsValid');
    if (areCredentialsValid) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
