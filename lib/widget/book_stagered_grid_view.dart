import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/widget/bookitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class book_stargered_gid extends StatefulWidget {
    final int selected;
  final PageController pageController;
  final Function callback;

  book_stargered_gid({ Key? key,required this.selected,required this.pageController,required this.callback }) : super(key: key);

  @override
  _book_stargered_gidState createState() => _book_stargered_gidState();
}

class _book_stargered_gidState extends State<book_stargered_gid> {
    final booklist = Book.generateBooks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),

      child: PageView(
        controller: widget.pageController,
        children: [
          StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          physics:const ScrollPhysics(),
          itemCount: booklist.length,
          itemBuilder: (_, index) => bookItem(book: booklist[index],),
          staggeredTileBuilder: (_) => StaggeredTile.fit(2))
        ],
      )
    );
  }
}