// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Pantai Gigi Hiu",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
                    Text("Open Everyday")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("09:00 - 20:00")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.monetization_on),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("Rp 25.000")
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
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      )),
    );
  }
}
