import 'package:flutter/material.dart';
import 'package:travel_app/data/activities.dart';
import 'package:travel_app/data/destinations.dart';
import 'package:travel_app/star_rating.dart';

class DestinationScreen extends StatelessWidget {
  final Destination destination;

  const DestinationScreen({Key key, this.destination}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.width * 0.06),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.06)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: Offset(3, 3))
                  ]),
              child: Hero(
                tag: destination.image,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.width * 0.06),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.06)),
                  child: Image(
                    image: AssetImage(destination.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 35,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 35,
                          color: Colors.black,
                        ),
                        onPressed: () => {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.city,
                    style: TextStyle(
                        fontSize: 40,
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
                        size: 25,
                      ),
                      Text(
                        destination.country,
                        style: TextStyle(fontSize: 20, color: Colors.grey[100]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Icon(
                Icons.location_searching,
                color: Colors.grey[100],
                size: 25,
              ),
            ),
          ]),
          Expanded(
            child: Container(
              child: ListView.builder(
                //padding: EdgeInsets.all(10),
                itemCount: activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = activities[index];
                  return Stack(children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  offset: Offset(5, 5))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(110, 10, 20, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 120,
                                    child: Text(
                                      activity.name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "\$" + (activity.price).toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "per pax",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                activity.type,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              // SizedBox(
                              //   height: 5,
                              // ),
                              StarRating(
                                rating: activity.rating,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(activity.startTime[0],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(activity.startTime[1],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                      left: 20,
                      top: 10,
                      child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 3,
                                    offset: Offset(3, 3))
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image: AssetImage(activity.image),
                              fit: BoxFit.cover,
                            ),
                          )),
                    )
                  ]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
