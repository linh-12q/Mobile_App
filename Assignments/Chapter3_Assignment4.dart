class BankAccount {
  String accountName;
  String accountNumber;
  double balance;

  BankAccount(this.accountName, this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposit money: \$${amount.toInt()}");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdraw money: \$${amount.toInt()}");
    } else {
      print("Not enough balance");
    }
  }

  void showBalance() {
    print("Final Balance: \$${balance.toInt()}");
  }
}

class BankingUpgrade extends BankAccount {
  List<String> transactionHistory = [];

  BankingUpgrade(String accountName, String accountNumber, double balance)
      : super(accountName, accountNumber, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    transactionHistory.add("Deposited: \$${amount.toInt()}");
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      transactionHistory.add("Withdrawn: \$${amount.toInt()}");
    } else {
      transactionHistory.add("Failed withdraw: \$${amount.toInt()}");
      print("Not enough balance.");
    }
  }

  void addInterest(double rate) {
    double interest = balance * rate / 100;
    balance += interest;
    transactionHistory.add("Interest add: \$${interest.toInt()}");
  }

  void showTransactionHistory() {
    print("Transaction History:");

    for (String transaction in transactionHistory) {
      print("- $transaction");
    }
  }
}

void main() {
  BankingUpgrade account1 = BankingUpgrade("Lam Dalinh", "096129845", 3000);
  print("Account Name: ${account1.accountName}");
  print("Account Number: ${account1.accountNumber}");
  print("Balance: \$${account1.balance.toInt()}");

  account1.deposit(500);
  account1.withdraw(200);
  account1.addInterest(10);
  account1.showBalance();
  account1.showTransactionHistory();
}