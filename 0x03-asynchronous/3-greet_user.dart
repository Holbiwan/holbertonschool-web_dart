import 'dart:async';
import 'dart:convert';
import '3-utils.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    final Map<String, dynamic> userMap = jsonDecode(userData);
    String username = userMap['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool credentialsValid = await checkCredentials();
    print('There is a user: $credentialsValid');
    if (credentialsValid) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
