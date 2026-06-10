import 'dart:io';

void main() {
  List<String> books = [];

  int choice = 0;

  do {
    print("\n======= Library Book Manager Menu =======");
    print("1. Add Book");
    print("2. Remove Book");
    print("3. View Books");
    print("4. Search Book");
    print("5. Count Books");
    print("6. Exit");

    stdout.write("Enter your choice: ");
    choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (choice) {
      case 1:
        addBook(books);
        break;

      case 2:
        removeBook(books);
        break;

      case 3:
        viewBooks(books);
        break;

      case 4:
        searchBook(books);
        break;

      case 5:
        countBooks(books);
        break;

      case 6:
        print("Exit program...");
        break;

      default:
        print("Invalid choice. Please try again. Thank you ");
    }
  } while (choice != 6);
}

void addBook(List<String> books) {
  stdout.write("Enter book to add: ");
  String book = stdin.readLineSync()!.trim();

  if (book.isEmpty) {
    print("Book name cannot be empty.");
  } else {
    books.add(book);
    print("Book '$book' added  successfully.");
  

  }
}

void removeBook(List<String> books) {
  if (books.isEmpty) {
    print("Library is empty.");
    return;
  }

  print("======== Book List ========");
  for (int i = 0; i < books.length; i++) {
    print("${i + 1}. ${books[i]}");
  }

  stdout.write("Enter book name to remove: ");
  String book = stdin.readLineSync()!.trim();

  bool removed = books.remove(book);

  if (removed) {
    print("Book removed from library successfully.");
  } else {
    print("Book not found in library.");
  }
}

void viewBooks(List<String> books) {
  if (books.isEmpty) {
    print("Library is empty.");
  } else {
    print("======== Book List ========");
    for (int i = 0; i < books.length; i++) {
      print("${i + 1}. ${books[i]}");
    }
  }
}


void searchBook(List<String> books) {
  if (books.isEmpty) {
    print("Library is empty.");
    return;
  }

  stdout.write("Enter book to search: ");
  String book = stdin.readLineSync()!.trim();

  if (books.contains(book)) {
    print("Book found in library.");;
    print("======== Book List ========");
    for (int i = 0; i < books.length; i++) {
      if (books[i] == book) {
        print("${i + 1}. ${books[i]}");
      }
    }
  } else {
    print("Book not found in library.");
  }
}

void countBooks(List<String> books) {
  print("Total Books: ${books.length}");
}