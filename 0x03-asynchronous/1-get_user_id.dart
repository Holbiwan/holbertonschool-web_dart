import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String stringResponse = await fetchUserData();
  var response = json.decode(stringResponse);
  return response["id"];
}

