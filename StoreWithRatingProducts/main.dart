import 'package:flutter/material.dart';
import 'package:flutter_application_1/product_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product State demo home Page'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "Iphone",
              description: "Iphone is a stylist phone ever",
              price: 1000,
              image:
                  "C:/Users/ASUS/Documents/Flutter/demo/flutter_application_1/lib/assets/iphone.jpeg "),
          ProductBox(
              name: "Laptop Asus",
              description: "This is a gaming Laptop",
              price: 3000,
              image:
                  "C:/Users/ASUS/Documents/Flutter/demo/flutter_application_1/lib/assets/laptop.jpeg"),
          ProductBox(
              name: "Rainbow Love ",
              description: "This is the real sense of love",
              price: 7,
              image:
                  "C:/Users/ASUS/Documents/Flutter/demo/flutter_application_1/lib/assets/pixel.jpeg"),
          ProductBox(
              name: "Tablet ",
              description: "This is a very practical tablet",
              price: 700,
              image:
                  "C:/Users/ASUS/Documents/Flutter/demo/flutter_application_1/lib/assets/tablet.jpeg"),
          ProductBox(
              name: "Pen Drive",
              description: "This is a Pen Drive",
              price: 14,
              image:
                  "C:/Users/ASUS/Documents/Flutter/demo/flutter_application_1/lib/assets/pendrive.jpeg"),
          ProductBox(
              name: "Floopy Drive",
              description: "This is a Floopy Drive",
              price: 14,
              image:
                  "C:/Users/ASUS/Documents/Flutter/demo/flutter_application_1/lib/assets/floppy drive.jpeg")
        ],
      ),
    );
  }
}
