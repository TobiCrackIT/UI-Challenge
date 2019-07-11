import 'package:flutter/material.dart';

class BookDescription extends StatelessWidget {
  final Color color;
  final String title;
  final String author;
  final String imageURL;

  const BookDescription({Key key, @required this.color,@required this.title, @required this.author, this.imageURL }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 25,
        ),
        Container(
          height: 180,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: color,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.card_giftcard,
                      color: Colors.white,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 12),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  softWrap: true,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                child: imageURL == null
                    ? Image.asset(
                  'assets/woman.jpg',
                  width: 100,
                  height: 85,
                  fit: BoxFit.fill,
                  color: color,
                  colorBlendMode: BlendMode.hardLight,
                )
                    : Image.network(
                  imageURL,
                  width: 100,
                  height: 85,
                  fit: BoxFit.cover,
                  color: color,
                  colorBlendMode: BlendMode.hardLight,
                ),),
            ],
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Container(
            child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                softWrap: true,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                author,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
                softWrap: true,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        )),
        SizedBox(
          width: 35,
        ),
      ],
    );
  }
}
