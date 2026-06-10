class Employee{
  String  ID;
  String name;
  double salary;

  Employee(this.ID, this.name, this.salary); 

  void calculateSalary(){
    print("The salary of $ID,$name is \$${salary}");
  }
}
class Manager extends Employee{ 
    double bonus;
  Manager(String ID, String name, double salary, this.bonus) : super(ID, name, salary);
  @override
  void calculateSalary() {
    double totalSalary = salary + bonus;
    print(" ID = $ID\n Name = $name \n Slary = \$${totalSalary}");
  }
}
class Developer extends Employee{
  String programmingLanguage;
  Developer(String ID, String name, double salary, this.programmingLanguage) : super(ID, name, salary);
  @override
  void calculateSalary() {
    print(" ID = $ID\n Name = $name \n Slary = \$${salary}\n Programming Language = $programmingLanguage");
  }
}
void main() {
  Manager manager = Manager("M001", "Alice", 5000, 1000);
  Developer developer = Developer("D001", "Bob", 4000, "Dart");
  
  print("Manager salary: ");manager.calculateSalary();
  print("Developer salary: ");developer.calculateSalary();
}