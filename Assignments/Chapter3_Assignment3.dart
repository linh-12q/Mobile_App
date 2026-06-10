class Vehicle{
  void startEngine(){
    print("Engine started");
  }
}
class Car extends Vehicle{
  @override
  void startEngine() {
    print("Car engine started");
  }
}
class Bike extends Vehicle{
  @override
  void startEngine() {
    print("Bike engine started");
  }
}
void main(){
  Car car1 = Car();
  Bike bike1 = Bike();
  
  car1.startEngine();
  bike1.startEngine();
}