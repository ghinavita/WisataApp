import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.transparent,
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: home()
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/wisata.jpg"),
                  fit: BoxFit.cover,
                ),),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 220.0)),
                new Text('           Halo, Sedulur!', style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: Colors.white),),
                new Text(' '),
                new Text('    Mau', style: TextStyle(fontFamily: 'Montserrat', fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                new Text('    Liburan ', style: TextStyle(fontFamily: 'Montserrat', fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                new Text('    Kemana, nih?', style: TextStyle(fontFamily: 'Montserrat', fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                new Card(
                  margin: EdgeInsets.symmetric(horizontal: 36, vertical: 30),
                  color: Colors.white,
                  child: Column(
                    children: [
                      new Padding(padding: EdgeInsets.symmetric(vertical: 10),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Column(
                            children: [
                              new IconButton(icon: Icon(Icons.account_balance),
                                  color: Colors.cyan,
                                  iconSize: 45,
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => lwisata(),
                                      ),
                                    );
                                  }),
                              new Text('Wisata')
                            ],
                          ),
                          new Column(
                            children: [
                              new IconButton(icon: Icon(Icons.airline_seat_flat),
                                  color: Colors.cyan,
                                  iconSize: 45,
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => lwisata(),
                                      ),
                                    );
                                  }),
                              new Text('Hotel')
                            ],
                          ),
                          new Column(
                            children: [
                              new IconButton(icon: Icon(Icons.fastfood),
                                  color: Colors.cyan,
                                  iconSize: 45,
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => lwisata(),
                                      ),
                                    );
                                  }),
                              new Text('Kuliner')
                            ],
                          ),
                        ],
                      ),

                      new Padding(padding: EdgeInsets.symmetric(vertical: 10),),],
                  ),
                )
              ],
            ),] ),
    );

  }
}

