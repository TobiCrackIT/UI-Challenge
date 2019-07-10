  import 'package:flutter/material.dart';

void showBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext innerContext) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.person_pin),
                    title: new Text('Name'),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.music_note),
                    title: new Text('Title'),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.access_time),
                    title: new Text('Duration'),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.web),
                    title: new Text('Website'),
                  ),
                ],
              ),
            ),
          );
        });
  }
