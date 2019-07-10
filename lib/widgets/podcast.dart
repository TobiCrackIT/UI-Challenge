import 'package:flutter/material.dart';
import 'package:ui_challenge/utils.dart' as util;



class Podcast extends StatelessWidget {
  final String guestName;

  const Podcast({Key key, @required this.guestName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            guestName,
            style: TextStyle(fontSize: 8, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
