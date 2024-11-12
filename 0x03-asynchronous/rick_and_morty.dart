import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // Send GET request to the Rick and Morty API
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Decode JSON response
      final data = jsonDecode(response.body);
      final characters = data['results'];

      // Loop through each character and print their name
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // Print an error message if the response code is not 200
      print('Failed to load characters');
    }
  } catch (error) {
    // Error handling, print error message in case of any issue
    print('error caught: $error');
  }
}
