import'dart:io'; 

void main() { 

  List<String> Cart = [];

   int Choice ;

   do{
    print("\n =======Shopping Cart Menu=======");
    print("1. Add Item");
    print("2. Remove Item");
    print("3. View Cart");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    Choice = int.parse(stdin.readLineSync()!);
    switch(Choice){
      
      case 1: 
          addItem(Cart); break;
      case 2: 
        removeItem(Cart); break;
      case 3:
         viewCart(Cart); break;
      case 4:
        print("Exit"); break;
      default:
        print("Invalid choice");

    }
    
  } while(Choice != 4);  

} 

void addItem(List<String> Cart) {
  print("Enter item to add: ");
  String item = stdin.readLineSync()!;
  Cart.add(item);
  print("Item added to cart Successfully");
}

void removeItem(List<String> Cart) { 
  if(Cart.isEmpty){
    print("Cart is empty");
  }else{
  for (int i = 0; i < Cart.length; i++){
    print("${i + 1}. ${Cart[i]}");
  }
  }
  print("Enter item to remove: ");
  String item = stdin.readLineSync()!;
  Cart.remove(item);
  print("Item removed from cart Successfully");
} 

void viewCart(List<String> Cart) {
  if(Cart.isEmpty){
    print("Cart is empty");
  } else{ 
    for (int i = 0; i < Cart.length; i++){
      print("${i + 1}. ${Cart[i]}");
    }
  }
}
  



  