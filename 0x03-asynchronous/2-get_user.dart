import 'dart:async';

// Simulates async request to fetch user,failing after 2 sec.
Future<String> fetchUser() => Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

// Main function retrieves user with error handling.
Future<void> getUser() async {
  try {
    // Await response from fetchUser (which may throw an error).
    String userData = await fetchUser();
    print('User data retrieved: $userData');
  } catch (error) {
    // Clearer error message for better understanding.
    print('Error caught while fetching user: $error');
  } finally {
    // Block to execute actions in all cases, if needed.
    print('Fetch user process completed.');
  }
}
