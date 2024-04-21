import 'package:bookshelf/book.dart';

class Bookshelf {
  List<Book> bookshelf = [];

  //Create                                                                      //STATUS OK
  void addBook(String title, String author) {
    bookshelf.add(Book(title, author));
  }

  //Update per index                                                            //STATUS OK
  void updateBookPerIndex(int index, String newTitle, String newAuthor) {
    if (index <= bookshelf.length) {
      for (int i = 0; i < bookshelf.length; i++) {
        if (index == i) {
          bookshelf[i].title = newTitle;
          bookshelf[i].author = newAuthor;
        }
      }
    } else {
      print('This book may have no index, register now!!');
    }
  }

  //Delete per index                                                            //STATUS OK
  void removeBookPerIndex(int index) {
    bookshelf.removeAt(index);
  }

  //Delete per title                                                            //STATUS OK
  void removeBookPerTitle(String title) {
    bookshelf.removeWhere((book) => book.title == title);
  }

  //Read                                                                        //STATUS OK
  void bookshelfReader() {
    String textBuilder = '';
    for (int i = 0; i < bookshelf.length; i++) {
      textBuilder += ('[${bookshelf[i].title}, ${bookshelf[i].author}]\n');
    }
    print(textBuilder);
  }

  //CRUD COMPLETED :)
}
