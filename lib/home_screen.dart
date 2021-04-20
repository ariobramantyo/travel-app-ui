import 'package:flutter/material.dart';
import 'package:travel_app/exclusive_hotels.dart';

import 'data/hotel.dart';
import 'top_destination.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;

  List<IconData> icons = [
    Icons.airplanemode_active_rounded,
    Icons.fastfood,
    Icons.hotel,
    Icons.shopping_bag
  ];

  Widget iconsBuilder(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: selectedItem == index
                ? Theme.of(context).accentColor
                : Colors.grey[300]),
        child: Icon(
          icons[index],
          size: 30,
          color: selectedItem == index
              ? Theme.of(context).primaryColor
              : Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "What you would like \nto find?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(-2, 2))
              ],
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Search places, hotels, etc.',
                suffixIcon: Icon(Icons.search),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                isDense: true),
          ),
        )),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 35,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Explore",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconsBuilder(0),
                iconsBuilder(1),
                iconsBuilder(2),
                iconsBuilder(3)
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 35,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Destinations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(height: 300, child: TopDestination())),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Hotels",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            Hotel hotel = hotels[index];
            return ExclusiveHotels(hotel: hotel);
          }, childCount: hotels.length),
        )
      ],
    );
  }
}
