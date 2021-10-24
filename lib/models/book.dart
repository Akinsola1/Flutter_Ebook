class Book {
  String type;
  String name;
  String publisher;
  String imgurl;
  DateTime date;
  num score;
  String review;
  double height;
  Book(
    this.date,
    this.height,
    this.imgurl,
    this.name,
    this.publisher,
    this.review,
    this.score,
    this.type,
  );

  static List<Book> generateBooks() {
    return [
      Book(
          DateTime(2019, 3, 23),
          300,
          'assets/images/book1.jpeg',
          'History',
          'isStudio',
          'sbjlsfdbspfhgius ushgfhfs su sjhvijsvsfuis vhusdvdsfvs',
          4.7,
          'Hostory'),
      Book(
          DateTime(2019, 3, 23),
          220,
          'assets/images/book2.jpeg',
          'History',
          'isStudio',
          'sbjlsfdbspfhgius ushgfhfs su sjhvijsvsfuis vhusdvdsfvs',
          4.7,
          'Hostory'),
      Book(
          DateTime(2019, 3, 23),
          250,
          'assets/images/book3.jpeg',
          'History',
          'isStudio',
          'sbjlsfdbspfhgius ushgfhfs su sjhvijsvsfuis vhusdvdsfvs',
          4.7,
          'Hostory'),
      Book(
          DateTime(2019, 3, 23),
          220,
          'assets/images/book4.jpeg',
          'History',
          'isStudio',
          'sbjlsfdbspfhgius ushgfhfs su sjhvijsvsfuis vhusdvdsfvs',
          4.7,
          'Hostory'),
      Book(
          DateTime(2019, 3, 23),
          220,
          'assets/images/book5.jpeg',
          'History',
          'isStudio',
          'sbjlsfdbspfhgius ushgfhfs su sjhvijsvsfuis vhusdvdsfvs',
          4.7,
          'Hostory'),
      Book(
          DateTime(2019, 3, 23),
          220,
          'assets/images/book6.jpeg',
          'History',
          'isStudio',
          'sbjlsfdbspfhgius ushgfhfs su sjhvijsvsfuis vhusdvdsfvs',
          4.7,
          'Hostory'),
    ];
  }
}
