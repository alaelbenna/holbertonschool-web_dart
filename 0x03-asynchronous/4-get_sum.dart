import 'dart:convert';
import '4-util.dart';

calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userId = await jsonDecode(userData)['id'];
    final userOrders = await fetchUserOrders(userId);
    final orders = jsonDecode(userOrders);
    double totalPrice = 0;
    for (var order in orders) {
      final price = await fetchProductPrice(order);
      totalPrice += jsonDecode(price);
    }
    return totalPrice;
  } catch (e) {
    return -1;
  }
}
