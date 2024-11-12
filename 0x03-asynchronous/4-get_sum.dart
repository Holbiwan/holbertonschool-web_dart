import 'dart:async';
import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetches user data
    String userData = await fetchUserData();
    final Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetches user orders
    String ordersData = await fetchUserOrders(userId);
    List<dynamic> ordersList = jsonDecode(ordersData);

    // Calculates the total price of products
    double total = 0.0;
    for (var product in ordersList) {
      String priceData = await fetchProductPrice(product);
      double productPrice = jsonDecode(priceData);
      total += productPrice;
    }

    return total;
  } catch (error) {
    // Prints the error and returns -1 in case of failure
    print('error caught: $error');
    return -1;
  }
}
