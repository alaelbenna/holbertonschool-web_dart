import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final userId = jsonDecode(userData)['id'];
  return userId;
}
