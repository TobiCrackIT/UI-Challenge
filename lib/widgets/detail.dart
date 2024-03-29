import 'package:flutter/material.dart';

import 'book_description.dart';
import 'library_card.dart';
import 'library_scroll.dart';

class Detail extends StatelessWidget {
  final String author;
  final String title;
  final Color color;
  final String imageURL;

  Detail({this.author, this.title, this.color,this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              Icons.share,
              textDirection: TextDirection.rtl,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white70,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          BookDescription(author: author, color: color, title: title,imageURL: imageURL,),
          SizedBox(height: 12),
          LibraryScroll(color: color),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "The library",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 220,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return LibraryCard(
                      bookTitle: title,
                      author: author,
                      color: color,
                      imageURL: imageURL,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                        width: 25,
                      ),
                  itemCount: 5),
            ),
          ),
        ],
      ),
    );
  }
}
