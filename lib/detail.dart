import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(Icons.share,textDirection: TextDirection.rtl,color: Colors.black,),
          )
        ],
        backgroundColor: Colors.white70,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          firstHalf()
        ],
      ),
    );
  }

  Widget firstHalf(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          height: 180,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.redAccent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.card_giftcard, color: Colors.white, size: 16.0,),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 12),
                child: Text("Enterprise Design Sprints", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  softWrap: true,
                  textAlign: TextAlign.left,),
              ),
              SizedBox(height: 12,),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image.asset('assets/woman.jpg', width: 130,
                    height: 86,
                    fit: BoxFit.fill,)
              ),


            ],
          ),
        ),
        SizedBox(width: 25,),
        Container(

        )

      ],
    );
  }


}
