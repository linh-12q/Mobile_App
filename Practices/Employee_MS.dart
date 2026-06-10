import 'dart:io';

// Exchange rate from the slide
const double exchangeRate = 4021;

// Function to calculate total salary in USD
double calculateTotal(double hours, double ratePerHour) {
  return hours * ratePerHour;
}

// Function to calculate salary tax in Riel
double calculateTax(double salaryKHR) {
  double tax = 0;

  if (salaryKHR <= 1500000) {
    tax = 0;
  } else if (salaryKHR <= 2000000) {
    tax = (salaryKHR * 0.05) - 75000;
  } else if (salaryKHR <= 8500000) {
    tax = (salaryKHR * 0.10) - 175000;
  } else if (salaryKHR <= 12500000) {
    tax = (salaryKHR * 0.15) - 600000;
  } else {
    tax = (salaryKHR * 0.20) - 1225000;
  }

  return tax;
}

// Function to calculate net total salary
double calculateNetTotal(double totalUSD, double taxKHR) {
  double taxUSD = taxKHR / exchangeRate;
  return totalUSD - taxUSD;
}

void main() {
  print("===== Employee Management System =====");

  stdout.write("Enter EmpID: ");
  String empID = stdin.readLineSync()!;

  stdout.write("Enter EmpName: ");
  String empName = stdin.readLineSync()!;

  stdout.write("Enter Hours: ");
  double hours = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Rate/Hour: ");
  double ratePerHour = double.parse(stdin.readLineSync()!);

  double totalUSD = calculateTotal(hours, ratePerHour);
  double totalKHR = totalUSD * exchangeRate;
  double taxKHR = calculateTax(totalKHR);
  double netTotalUSD = calculateNetTotal(totalUSD, taxKHR);

  print("\n===== Employee Salary Result =====");
  print("EmpID      : $empID");
  print("EmpName    : $empName");
  print("Hours            : $hours");
  print("Rate/Hour        : \$${ratePerHour.toStringAsFixed(0)}/h");
  print("Total            : \$${totalUSD.toStringAsFixed(2)}");
  print("Net Total        : \$${netTotalUSD.toStringAsFixed(2)}");

  print("\n======== Thank you ========");
}