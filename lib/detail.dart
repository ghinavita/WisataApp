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

  Widget itemImage; asd (BuildContext context, int index) {

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
    var assetsImage = new NetworkImage('http://dev.farizdotid.com/api/halopwk/gambar/wisata/gambar_1.jpg'); //<- Creates an object that fetches an image.
    var image = new Image(image: assetsImage, fit: BoxFit.cover);
//    var assetImage= new Image.network('${snapshot.data.wisata[index].gambarUrl}');
    return Scaffold(
        appBar: AppBar(
          title: Text(
          'Detail Wisata', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: Colors.white),),
          backgroundColor: Colors.black,
        ),

        body: Column(
          children: [
            Container(
              child: image,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal:24 ),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(14.0)),
                    Text('Alun-Alun Kian Santang', style: TextStyle(fontFamily: 'Playfair Display', fontSize: 42, fontWeight: FontWeight.bold),),
                    Text('Taman', style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: Colors.grey),),
                    Padding(padding: EdgeInsets.all(16.0)),
                    Text('Alun-alun kota & tempat nongkrong sore populer, dengan area beraspal & taman, patung & air mancur. Tidak ada tarif jika anda ingin berwisata disini.',
                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, ),textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,),
                  ],
                )),
          ],
        )
    );
  }
}



