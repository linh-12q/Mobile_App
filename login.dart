import 'dart:io';

void main() {
  // Correct login information
  String correctUsername = "admin";
  String correctPassword = "12345";

  print("===== Login System =====");

  // Ask user to input username
  stdout.write("Enter username: ");
  String? username = stdin.readLineSync();

  // Ask user to input password
  stdout.write("Enter password: ");
  String? password = stdin.readLineSync();

  // Check username and password
  if (username == correctUsername && password == correctPassword) {
    print("Login successful!");
    print("Welcome, $username!");
  } else {
    print("Login failed!");
    print("Invalid username or password.");
  }
}