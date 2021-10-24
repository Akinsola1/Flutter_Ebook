import 'package:ebook_app/const/colors.dart';
import 'package:ebook_app/widget/book_stagered_grid_view.dart';
import 'package:ebook_app/widget/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  var tabIndex = 0;
  final pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(),
        body: Column(children: [
          customTab(
              selected: tabIndex,
              callBack: (int index) {
                setState(() {
                  tabIndex = index;
                });
                if (pagecontroller.hasClients) {
                  pagecontroller.jumpToPage(index);
                }
              }),
          Expanded(
              child: book_stargered_gid(
            callback: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            pageController: pagecontroller,
            selected: tabIndex,
          ))
        ]));
  }

  _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(FontAwesomeIcons.bars),
        color: kfonts,
      ),
      title: Text('All Books', style: TextStyle(color: kfonts)),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.search),
          color: kfonts,
        )
      ],
    );
  }
}
