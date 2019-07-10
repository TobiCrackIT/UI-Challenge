import 'package:flutter/material.dart';

class LibraryCard extends StatelessWidget {
  final String bookTitle;
  final String author;
  final Color color;
  const LibraryCard({this.bookTitle, this.author, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: color,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.white,
                        size: 14.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 12),
                  child: Text(
                    bookTitle,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    softWrap: true,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      'assets/woman.jpg',
                      width: 100,
                      height: 68,
                      fit: BoxFit.fill,
                      color: color,
                      colorBlendMode: BlendMode.hardLight,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              bookTitle,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              softWrap: true,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
