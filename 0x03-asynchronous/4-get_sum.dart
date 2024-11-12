import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    String userId = jsonDecode(userData)["id"];

    // Fetch user orders
    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userProducts = jsonDecode(userOrdersData);

    // Initialize total
    num total = 0;

    // Loop through each product in orders and add its price to the total
    for (final product in userProducts) {
      String productPrice = await fetchProductPrice(product);
      total += jsonDecode(productPrice);
    }

    return total;
  } catch (err) {
    // Error handling, return -1 in case of any issue
    return -1;
  }
}
