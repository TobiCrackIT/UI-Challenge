import 'package:flutter/material.dart';

class WorkshopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  'assets/pass4.jpg',
                  width: 110,
                  height: 110,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              width: 12.0,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Upcoming Workshops",
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                    child: Text(
                      "We are currently working on our "
                      "Fall 2019 Workshop Schedule and "
                      "we will have details available soon",
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
