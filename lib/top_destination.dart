import 'package:flutter/material.dart';

import 'data/destinations.dart';
import 'destination_screes.dart';

class TopDestination extends StatefulWidget {
  @override
  _TopDestinationState createState() => _TopDestinationState();
}

class _TopDestinationState extends State<TopDestination> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 10),
        itemCount: destinations.length,
        itemBuilder: (BuildContext context, int index) {
          Destination destination = destinations[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => DestinationScreen(
                          destination: destination,
                        ))),
            child: Container(
              width: 220,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 25,
                    child: Container(
                      height: 130,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 3,
                                offset: Offset(5, 5))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ((destinations[index].activities).length)
                                      .toString() +
                                  " activities",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 5),
                            Text(destinations[index].description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(5, 5))
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Hero(
                          tag: destinations[index].image,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 180,
                              height: 180,
                              child: Image(
                                image: AssetImage(destinations[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                destinations[index].city,
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    letterSpacing: 1.5),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: Colors.grey[100],
                                    size: 15,
                                  ),
                                  Text(
                                    destinations[index].country,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[100]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
