import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';

class bookItem extends StatelessWidget {
  final Book book;
  bookItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: book.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(book.imgurl),
        fit: BoxFit.cover
      ),
      borderRadius: BorderRadius.circular(16)
      ),
    );
  }
}
