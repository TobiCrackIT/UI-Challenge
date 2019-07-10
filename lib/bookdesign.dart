import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:ui_challenge/library_card.dart';
import 'package:ui_challenge/workshop.dart';
import 'detail.dart';
import 'Book.dart';
import 'utils.dart' as util;
//import 'package:url_launcher/url_launcher.dart';

class BookDesign extends StatelessWidget {
  List<String> bookTitles = [
    "Enterprise Design Sprints",
    "DesignOps Handbook",
    "Design System Handbook",
    "Engineering Mathematics",
    "Fluid Mechanics and Dynamics",
    "Intro to Thermodynamics"
  ];
  List<String> authorsList = [
    "Richard Bonfield",
    "Taraji Henson",
    "Ben Bruce",
    "Constatine Cavafy",
    "Robert Fulghum"
  ];
  List<Color> cardColors = [
    Colors.blue[800],
    Colors.pink,
    Colors.green[700],
    Colors.red[400],
    Colors.yellow[600],
  ];
  List<String> imagesURL;

  List<Book> bookList = [
    Book("Something On The Other Side", "Robert Bremner", Colors.blue[800],
        "https://bookcoverexpress.com/wp-content/uploads/2017/08/spooky.jpg"),
    Book("Get Your Life Back", "Dr. Melodie Billiot", Colors.pink,
        "https://bookcoverexpress.com/wp-content/uploads/2018/03/medicallarge.jpg"),
    Book("Why We Dream", "Steve Dorsey", Colors.green[700],
        "https://bookcoverexpress.com/wp-content/uploads/2019/03/dreamLARGE-1.jpg"),
    Book("The Dating Mirror", "Diana Dorrell", Colors.red[400],
        "https://bookcoverexpress.com/wp-content/uploads/2019/03/mirrorlarge.jpg"),
    Book("Hitting The Ground", "Brad Manuel", Colors.yellow[600],
        "https://bookcoverexpress.com/wp-content/uploads/2015/06/manuel.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    Widget podcast(String nName, Color color) {
      return GestureDetector(
        onTap: () {
          util.showBottomSheet(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.asset(
                  'assets/pass3.jpg',
                  width: 60,
                  height: 60,
                  fit: BoxFit.fill,
                  color: Colors.purple.withOpacity(0.7),
                  colorBlendMode: BlendMode.hardLight,
                )),
            SizedBox(
              height: 1,
            ),
            Text(
              nName,
              style: TextStyle(fontSize: 8, color: Colors.grey),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  color: Colors.green[600],
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(70))),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.15 - 80),
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.graphic_eq,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: ListTile(
                            leading: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Icon(Icons.add_a_photo),
                            ),
                            title: Text(
                              "Juliana Martins",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "julianamartins@gmail.com",
                              style: TextStyle(
                                color: Colors.grey.shade200,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 110, right: 180),
                          height: MediaQuery.of(context).size.height * 0.040,
                          decoration: BoxDecoration(
                              color: Colors.green[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "The library",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 220,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      Book currentBook = bookList[index];
                      return LibraryCard(
                        author: currentBook.author,
                        bookTitle: currentBook.title,
                        color: currentBook.color,
                        imageURL: currentBook.imageURL,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detail(
                                    author: currentBook.author,
                                    title: currentBook.title,
                                    color: currentBook.color,
                                  )));
                        },
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                          width: 25,
                        ),
                    itemCount: 5),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Workshops",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return WorkshopCard();
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                          width: 15,
                        ),
                    itemCount: 4),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Podcasts",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return podcast(authorsList[index], cardColors[index % 4]);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                          width: 35,
                        ),
                    itemCount: 5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
