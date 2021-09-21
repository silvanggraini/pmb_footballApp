import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List list_nama_pemain = ["Lionel Messi", "Mohammed Salah", "Robert Lewandowski", "Cristiano Ronaldo", "Kylian Mbappe"];
  List negara_asal = ["Argentina", "Mesir", "Polandia","Portugal","Prancis"];
  List klub = ["Barcelona", "Liverpool", "Bayern Munchen", "Juventus", "Manchester City"];
  List gambar = ["img/Barcelona.png","img/Logo_Liverpool.png", "img/Bayern_Munchen.jpg","img/juventus.jpg","img/Manchester_City.png"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
      appBar:
      AppBar(
        title: Center(child:Text('Daftar Pemain Bola')),
        backgroundColor: Colors.tealAccent[700],
        toolbarHeight: 80.0,
      ),

      body: ListView(
        children: [
          for (int j=0; j<list_nama_pemain.length; j++)
          Container(
        height: 120,
        width: double.infinity,
        
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0,3),
            )
          ]
        ),
        child: Row(
          children: <Widget>[
            Image.asset(gambar[j], width: 70.0),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              // width: 200,
              // height: 120,
                color: Colors.white, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(list_nama_pemain[j],
                    style: TextStyle(fontSize: 18)),
                    Text(negara_asal[j]),
                    Text(klub[j]),
                    Row(
                      children: [
                        for (int i=0; i<3; i++)
                        Icon(Icons.star, 
                        color: Colors.amber,)
                      ],
                    )
                  ],
                ),
            ),
            ) 
          ],
        ),
      )
        ],
      )
      
      )
    );
    
  }
}
