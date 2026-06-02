// import 'dart:io'; // Import the 'dart:io' library 
// void main(){
//    List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Orange']; 
//    fruits.add('Mango'); 
//    fruits.add('Watermelon'); 
//    fruits.remove('Banana');

//    for (int i = 0; i <3; i++) { 
//      print(fruits[i]);;

//     // Create a list of fruits
//    print(fruits); // Print the list 


//   // List<String> Cart = [];
//   // Cart.add('Apple');
//   // Cart.add('Banana');
//   // Cart.add('Cherry');
//   // Cart.add('Orange');
//   // Cart.add('Mango');
//   // Cart.add('Watermelon');
//   // Cart.remove('Banana');
//   // print(Cart);
  

// } 

// }   


// void main() {
//    Set<int> numbers = {1, 2, 3, 4, 5}; // Create a set of integers
//    numbers.add(6); // Add a number to the set
//    numbers.remove(3); // Remove a number from the set
//    print(numbers); // Print the set
// }  

void main() {
  Map<String, int> studentGrades = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
    'David': 90,
  }; // Create a map of student names and their grades

  studentGrades['Eve'] = 88; // Add a new student and grade to the map
  studentGrades.remove('Charlie'); // Remove a student from the map

  print(studentGrades); // Print the map of student grades
}
