// Task1 : Create a Simple Class

// class Student{
//     String name ='Dalinh';
//     int age = 22;

// } 
// void main (){
//   Student student1 = Student();
//   print("Student name: ${student1.name}");
//   print("Student age: ${student1.age}");
// }

// Task2 : Add a Method to the Class 

// class Student {
//   String name = 'Dalinh';
//   int age = 22; 
//   void introduce() {
//   print("Hello, my name is $name and I'm $age years old.");
//  }
// }
// void main() {
//   Student student1 = Student();
//   student1.introduce();
// } 

// Task3 : Create a Constructor 
 
// class Student{
//    String name ;
//    int age ;

// Student(this.name, this.age); 
// }
// void main (){
//   Student student1 = Student("Dalinh", 22);
//   print("Student name: ${student1.name}");
//   print("Student age: ${student1.age}");
// }


// Task4 : Inheritance 

// class Animal {
//   void sound() {
//     print("Animal makes a sound");
//   }
// }

// class Cat extends Animal {
//   void meow() {
//     print(" Cat meows");
//   }
// }
// void main() {
//   Cat cat1 = Cat();
//   cat1.sound();
//   cat1.meow();
// } 

// Task5 : Method Overriding 

// class Animal {
//   void sound() {
//     print("Animal makes a sound");
//   }
// } 
// class Cat extends Animal {
//   @override
//   void sound() {
//     print("Cat meows");
//   }
// }
// void main() {
//   Cat cat1 = Cat();
//   cat1.sound();
// } 

// Task6 &7 : Bank Account System 
class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposit money: \$${amount.toInt()}");
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient funds. Withdrawal failed.");
    } else {
      balance -= amount;
      print("Withdraw money: \$${amount.toInt()}");
    }
  }

}
void main() {
  BankAccount account1 = BankAccount("096129845", 1000);
  print("Account Number: ${account1.accountNumber}");
  print("Balance: \$${account1.balance.toInt()}");
  account1.deposit(500);
  account1.withdraw(200);
  print("Final Balance: \$${account1.balance.toInt()}");
 
}


