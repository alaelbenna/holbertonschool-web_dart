import '0-util.dart';

Future<void> usersCount() async {
  final usersCount = await fetchUsersCount();
  print('$usersCount');
}
