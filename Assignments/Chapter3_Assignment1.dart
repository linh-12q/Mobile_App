class Book {
  String title;
  String author; 

  Book(this.title, this.author);
  
  void displayInfo() {
    print("Title: $title");
    print("Author: $author");
  } 
  
}
void main() {
  Book book1 = Book(" Dart Programming", " Lam Dalinh");
  book1.displayInfo();
}