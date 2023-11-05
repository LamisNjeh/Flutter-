// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(Object context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price : " + this.price.toString()),
                    RatingBox(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RatingBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RatingBoxState();
  }
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    _rating = 1;
  }

  void _setRatingAsTow() {
    _rating = 2;
  }

  void _setRatingAsThree() {
    _rating = 3;
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              _setRatingAsOne();
            },
            icon: (_rating >= 1
                ? Icon(Icons.star, size: _size)
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[600],
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              _setRatingAsTow();
            },
            icon: (_rating >= 2
                ? Icon(Icons.star, size: _size)
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[600],
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              _setRatingAsThree();
            },
            icon: (_rating >= 3
                ? Icon(Icons.star, size: _size)
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[600],
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
