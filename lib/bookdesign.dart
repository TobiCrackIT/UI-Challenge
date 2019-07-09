import 'package:flutter/material.dart';
import 'detail.dart';

class BookDesign extends StatelessWidget {

  List<String> bookTitles=["Enterprise Design Sprints","DesignOps Handbook","Design System Handbook","Engineering Mathematics","Fluid Mechanics and Dynamics","Intro to Thermodynamics"];
  List<String> authorsList=["Richard Bonfield","Taraji Henson","Ben Brue","Constatine Cavafy","Robert Fulghum"];
  List<Color> cardColors=[Colors.blue[800],Colors.pink,Colors.green[700],Colors.red[400],Colors.yellow[600],];
  List<String> imagesURL;

  


  @override
  Widget build(BuildContext context) {
    
    _pushMember() {
      Navigator.of(context).push(
          new MaterialPageRoute(
              builder: (context) => new Detail()
          )
      );
    }

    Widget libraryCard(String bookTitle,String author,Color color){
      return GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail()));
        },
        child: Container(
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
                      child: Text(bookTitle,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),softWrap: true,textAlign: TextAlign.left,),
                    ),
                    SizedBox(height: 14,),
                    ClipRRect(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Image.asset('assets/woman.jpg',width: 100,height: 68,fit: BoxFit.fill,)
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
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Text("By $author",style: TextStyle(fontSize: 8,color: Colors.grey),softWrap: true,textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,),
              ),

            ],
          ),
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
              height: MediaQuery.of(context).size.height*0.25,
              decoration: BoxDecoration(
                color: Colors.green[600],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))
              ),

              child: Stack(
                children: <Widget>[
                  /*ClipPath(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.green,
                    ),
                    clipper: RoundedClipper(30),
                  ),*/
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.15 - 80),
                    height: MediaQuery.of(context).size.height * 0.33,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.graphic_eq,color: Colors.white,),
                              Icon(Icons.search,color: Colors.white,),

                          ],
                  ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: ListTile(
                              leading: Container(
                                height: 60,width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Icon(Icons.add_a_photo),
                              ),
                              title: Text("Juliana Martins",style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),
                              subtitle: Text("julianamartins@gmail.com",style: TextStyle(color: Colors.grey.shade200,fontSize: 12.0,),),
                            ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 110,right: 180),
                          height: MediaQuery.of(context).size.height*0.040,
                          decoration: BoxDecoration(
                              color: Colors.green[900],
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 10.0),),
                            ),

                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
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
                      separatorBuilder: (BuildContext context, int index) => SizedBox(width: 20,),
                      itemCount: 5
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("Workshops",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 110,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return workshopCard();
                    },
                    separatorBuilder: (BuildContext context, int index) => SizedBox(width: 15,),
                    itemCount: 4
                ),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("Podcasts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 90,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return podcast(authorsList[index],cardColors[index%4]);
                    },
                    separatorBuilder: (BuildContext context, int index) => SizedBox(width: 35,),
                    itemCount: 5
                ),
              ),
            )

          ],
        ),
      ),

    );


  }



  Widget workshopCard(){
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipRRect(

              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/pass2.jpg',width: 110,height: 110,fit: BoxFit.fill,)
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,),
                Text("Upcoming Workshops",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),softWrap: true,textAlign: TextAlign.left,),
                SizedBox(height: 10,),


              ],
            ),
          )
        ],
      ),
    );
  }

  Widget podcast(String nName,Color color){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[

        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset('assets/pass2.jpg',width: 60,height: 60,fit: BoxFit.fill,colorBlendMode: BlendMode.overlay,)
        ),

        SizedBox(height: 1,),

        Text(nName,style: TextStyle(fontSize: 8,color: Colors.grey),)
      ],
    );
  }


}

class RoundedClipper extends CustomClipper<Path> {
  var differenceInHeights = 0;

  RoundedClipper(int differenceInHeights) {
    this.differenceInHeights = differenceInHeights;
  }

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - differenceInHeights);
    path.quadraticBezierTo(
        size.width / 3, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
