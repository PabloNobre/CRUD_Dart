import 'package:bookshelf/bookshelf.dart';

void main() {
  Bookshelf bookshelf = Bookshelf();

  bookshelf.addBook('Metro: 2033', 'Dmitri Glukhovski');
  bookshelf.addBook('The Witcher', 'Andrzej Sapkowski');
  bookshelf.addBook('Game of Thrones', 'George R. R. Martin');

  bookshelf.bookshelfReader();
  print('-------------------------------------------\n');
  bookshelf.updateBookPerIndex(1, 'A volta dos que não foram', 'Pablo Nobre');
  bookshelf.bookshelfReader();
}
