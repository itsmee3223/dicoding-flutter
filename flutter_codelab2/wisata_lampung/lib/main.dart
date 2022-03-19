// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wisata_lampung/detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Lampung',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailScreen(),
    );
  }
}

var textFont = TextStyle(fontFamily: 'Poppins');

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('images/gigi-hiu-lampung.jpg'),
          Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Pantai Gigi Hiu",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Open Everyday",
                      style: textFont,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "09:00 - 20:00",
                      style: textFont,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.monetization_on),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Rp 25.000",
                      style: textFont,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Menyebut diri Anda sebagai seorang pecinta aktivitas luar ruang dan berjiwa petualang sejati? Anda adalah orang yang harus memasukkan Pantai Gigi Hiu ke dalam list tempat yang harus Anda kunjungi. Terletak di Provinsi Lampung, Pantai Gigi Hiu menawarkan pengalaman mengunjungi pantai yang berbeda bagi Anda.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network(
                      "https://backpackerjakarta.com/wp-content/uploads/2017/12/pantai-gigi-hiu.jpg"),
                ),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                        "http://excellenttourstravel.com/wp-content/uploads/2019/11/pantai-gigi.jpg")),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network(
                      "https://www.travelclub.co.id/wp-content/uploads/2020/05/photo_2018-02-02_13-49-44.jpg"),
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
