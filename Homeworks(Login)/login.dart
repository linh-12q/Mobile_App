import 'dart:io';

void main() {
  print("===== Login System =====");

  stdout.write("Enter username: ");
  String? username = stdin.readLineSync();

  stdout.write("Enter password: ");
  String? password = stdin.readLineSync();

  if (username != null &&
      password != null &&
      username.isNotEmpty &&
      password.isNotEmpty) {
    print("Login successful!");
    print("Welcome, $username!");
  } else {
    print("Login failed!");
    print("Username and password cannot be empty.");
  }
}