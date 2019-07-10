import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

  final String author;
  final String title;
  final Color color;


  Detail({this.author, this.title, this.color});

  @override
  Widget build(BuildContext context) {

    List<String> bookTitles=["Animation Handbook","Design Leadership Handbook","Design Thinking Handbook","DesignOps Handbook","Fluid Mechanics and Dynamics",];
    List<String> authorsList=["Richard Bonfield","Taraji Henson","Ben Brue","Constatine Cavafy","Robert Fulghum"];
    List<Color> cardColors=[Colors.blue[800],Colors.pink,Colors.green[700],Colors.red[400],Colors.yellow[600],];


    Widget secondPart(){
      return Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text("Design Sprints provide a problem-solving framework to get answers quickly and effectively. "
                    "Learn to run sprints in any organisation to reduce politics, increase collaboration, and put the focus"
                    " on outcomes.",style: TextStyle(fontSize: 13.5,color: Colors.grey,fontWeight: FontWeight.w600),softWrap: true,),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0,),
                child: Text("Available in PDF and EPUB formats.",style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),softWrap: true,),
              ),

              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: (){
                          //_validateInputs();
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>null));
                        },

                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: Center(
                            child: Text("Read Now",style: TextStyle(color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w600),),

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
                        onTap: (){
                          //_validateInputs();
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>nul));
                        },

                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: Center(
                            child: IconButton(icon: Icon(Icons.cloud_download,color: Colors.white,), onPressed: null)

                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          )

      );
    }

    Widget libraryCard(String bookTitle,String author,Color color){
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
                          Icon(Icons.card_giftcard,color: Colors.white,size: 14.0,),
                        ],
                      ),
                    ),
                    SizedBox(height: 2,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 12),
                      child: Text(bookTitle,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),softWrap: true,textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 2,),
                    ),
                    SizedBox(height: 14,),
                    ClipRRect(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Image.asset('assets/woman.jpg',width: 100,height: 68,fit: BoxFit.fill,color: color,colorBlendMode: BlendMode.hardLight,)
                    ),


                  ],
                ),
              ),
              SizedBox(height: 7,),
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Text(bookTitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),softWrap: true,textAlign: TextAlign.left,),
              ),
              SizedBox(height: 5,),

            ],
          ),
        );
    }


    return Scaffold(
      backgroundColor: Colors.white,
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
          firstPart(),
          SizedBox(height: 12,),
          secondPart(),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("The library",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
          ),
          SizedBox(height: 20.0,),
          Container(
            height: 220,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return libraryCard(bookTitles[index],authorsList[index],cardColors[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) => SizedBox(width: 25,),
                  itemCount: 5
              ),
            ),
          ),
        ],
      ),
    );



  }

  Widget firstPart(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 25,),
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
                    Icon(Icons.card_giftcard, color: Colors.white, size: 16.0,),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 12),
                child: Text(title, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  softWrap: true,
                  textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,),
              ),
              SizedBox(height: 12,),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image.asset('assets/woman.jpg', width: 130,
                    height: 86,
                    fit: BoxFit.fill,
                    color: color,colorBlendMode: BlendMode.hardLight,
                  )
              ),


            ],
          ),
        ),
        SizedBox(width: 25,),
        Container(
          child: Flexible(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Text(title,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700),softWrap: true,),
                SizedBox(height: 15,),
                Text(author,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey),softWrap: true,),
                SizedBox(height: 50,),
              ],
            ),
          )
        ),
        SizedBox(width: 35,),
      ],
    );
  }




}
