class Book {
  String title,
      writer,
      price,
      image,
      description =
          'A book is a medium for recording information in the form of writing or images, typically composed of many pages (made of papyrus, parchment, vellum, or paper) bound together and protected by a cover. It can also be a handwritten or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers. The technical term for this physical arrangement is codex (plural, codices). In the history of hand-held physical supports for extended written compositions or records, the codex replaces its predecessor, the scroll. A single sheet in a codex is a leaf and each side of a leaf is a page..';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Book> books = [
  Book('Rich dad Poor Dad', 'Robert T. Kiyosaki',
      'Rs 1,500', 'res/book1.jpg', 3.7, 123),
  Book('To kill a Mockingbird', 'Harper Lee', 'Rs 2,800',
      'res/book2.png', 4.5, 200),
  Book('The Great Gatsby', 'F. Scott Fitzgerald',
      'Rs 6.200', 'res/book3.jpg', 5.0, 324),
  Book('One hundred year of solitude', 'Gabriel García Márquez', 'Rs 2,300','res/book4.jpg', 3.0, 200),
  Book('1984', 'George Orwell','Rp 1,000', 'res/book5.jpg', 4.8, 234),
  Book('The Catcher in the rye', 'J. D. Slinger',
      'Rs 5,700', 'res/book6.jpg', 4.5, 240),
  Book('Beloved', 'Toni Morrison',
      'Rs 2,400', 'res/book7.jpg', 4.8, 432),
  Book('Pride and Prejudice', 'Jane Austen',
      'Rs 5,500', 'res/book8.jpg', 4.5, 321),
  Book('Wuthering Heights', 'Emily Bronti',
      'Rs 5,400', 'res/book9.jpg', 3.5, 431),
  Book('Catch 22', 'Joseph Heller',
      'Rs 5,400', 'res/book10.jpg', 3.5, 431),
  Book('Jane Eyre', 'Charlotte Brontë',
      'Rs 5,400', 'res/book11.jpg', 3.5, 431),
  Book('Book Thief', 'Markus Zusak',
      'Rs 5,400', 'res/book12.jpg', 3.5, 431),
  Book('Great Expectaion', 'Charles Dickens',
      'Rs 5,400', 'res/book13.jpg', 3.5, 431),
  Book('frankenstein', 'Mary Shelley',
      'Rs 5,400', 'res/book14.jpg', 3.5, 431),
  Book('Crime and Punishment', 'Fyodor Dostoevsky',
      'Rs 5,900', 'res/book15.jpg', 3.5, 431),
];
