import 'package:flutter/material.dart';
import 'bookdesign.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
        canvasColor: Colors.transparent

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("UI Challenge"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: (){
                  //_validateInputs();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDesign()));
                },

                child: Container(
                  height: MediaQuery.of(context).size.height*0.065,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Center(
                    child: Text("BOOK APP",style: TextStyle(color: Colors.white,fontSize: 16.0),),

                  ),
                ),
              ),
            ),
            
            Image.network("https://bookcoverexpress.com/wp-content/uploads/2017/08/spooky.jpg",height: 200,width: 200,)

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
