import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:flutter_wisataapp/wisatadt.dart';

//import 'listview.dart';

class Detailwisata extends StatefulWidget {
  @override
  _DetailwisataState createState() => _DetailwisataState();
}

class _DetailwisataState extends State<Detailwisata> {
//  AssetImage _imageToShow ;
  Future<ListWisata> listwisata;

  Future<ListWisata> getListWisata() async {
    //fetch data dari api

    var dio = Dio();
    Response response = await dio.get(
        'https://dev.farizdotid.com/api/purwakarta/wisata');
    print(response.data);
    if (response.statusCode == 200) {
      return ListWisata.fromJson(response.data);
    } else {
      throw Exception('Failed to load album');
    }
  }
  @override
  void initState() {
    super.initState();
    listwisata = getListWisata();
  }
  Widget itemImage(BuildContext context, int index) {
    return Container(
        child: FutureBuilder<ListWisata>(
            future: listwisata,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(image: NetworkImage('${snapshot.data.wisata[index].gambarUrl}')),
                    )
                );
              }
              return Center(child: CircularProgressIndicator());
            })
    );

  }
  @override
  Widget build(BuildContext context) {
//    var assetImage= new Image.network('${snapshot.data.wisata[index].gambarUrl}');
    return Scaffold(
        appBar: AppBar(title: Text(
          'Wisata', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),),
        ),
        backgroundColor: const Color(0xfff6f6f6), //Liat di Figma
        body: Stack(
          children: <Widget>[
            Container(
            )],
        )
    );
  }
}



