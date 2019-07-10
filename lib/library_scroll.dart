import 'package:flutter/material.dart';

class LibraryScroll extends StatelessWidget {
  final Color color;

  const LibraryScroll({Key key, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            "Design Sprints provide a problem-solving framework to get answers quickly and effectively. "
            "Learn to run sprints in any organisation to reduce politics, increase collaboration, and put the focus"
            " on outcomes.",
            style: TextStyle(
                fontSize: 13.5,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
            softWrap: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Text(
            "Available in PDF and EPUB formats.",
            style: TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500),
            softWrap: true,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    //_validateInputs();
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>null));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                      child: Text(
                        "Read Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                        child: IconButton(
                            icon: Icon(
                              Icons.cloud_download,
                              color: Colors.white,
                            ),
                            onPressed: null)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
