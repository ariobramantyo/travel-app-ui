import 'package:flutter/material.dart';
import 'package:travel_app/star_rating.dart';

import 'data/hotel.dart';

class ExclusiveHotels extends StatefulWidget {
  final Hotel hotel;

  const ExclusiveHotels({Key key, this.hotel}) : super(key: key);

  @override
  _ExclusiveHotelsState createState() => _ExclusiveHotelsState();
}

class _ExclusiveHotelsState extends State<ExclusiveHotels> {
  Hotel hotel;
  bool favourite = false;
  _ExclusiveHotelsState({this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Stack(children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(5, 5))
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(widget.hotel.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: Offset(5, 5))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.hotel.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.place_outlined,
                            color: Colors.grey,
                          ),
                          Text(
                            widget.hotel.address,
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$ " + (widget.hotel.price).toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Per Night",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  StarRating(
                    rating: widget.hotel.rating,
                  )
                ],
              ),
            )
          ],
        ),
        Positioned(
          right: 10,
          bottom: 90,
          child: GestureDetector(
            onTap: () {
              setState(() {
                favourite = !favourite;
              });
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.blue[400], Colors.blue[200]]),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)),
              child: favourite == false
                  ? Icon(
                      Icons.favorite_border_outlined,
                      size: 35,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.favorite,
                      size: 35,
                      color: Colors.white,
                    ),
            ),
          ),
        ),
      ]),
    );
  }
}
