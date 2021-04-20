import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView(children: [
      Container(
        height: 460,
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Stack(children: [
              Container(
                height: screenHeight * 0.3,
                width: double.infinity,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('Images/paris.jpg'),
                ),
              ),
              Container(
                height: screenHeight * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.blue[400].withOpacity(1),
                        Colors.blue[400].withOpacity(0.9),
                        Colors.blue[300].withOpacity(0.7),
                        Colors.blue[200].withOpacity(0.4)
                      ]),
                ),
              ),
            ]),
            Positioned(
              top: 190,
              child: Container(
                padding: EdgeInsets.all(15),
                height: 250,
                width: screenWidth - 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: Offset(5, 5))
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lorem Ipsum',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Premium Member',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blue, Colors.purple])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Special Guest Offer!',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Exiciting offers on food,\nactivities, and shopping',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: AssetImage('Images/gift-box.png'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 135,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(55),
                  child: Image(
                    image: AssetImage('Images/eden.jpg'),
                    height: 110,
                    width: 110,
                  ),
                )),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        height: 400,
        child: Container(
          padding: EdgeInsets.all(15),
          width: screenWidth - 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: Offset(5, 5))
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Travellometer',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              travellometer(Colors.green, Colors.green[200], 'Food', 0.45),
              travellometer(Colors.blue, Colors.blue[200], 'Attractions', 0.25),
              travellometer(Colors.purple, Colors.purple[200], 'Hotel', 0.15),
              travellometer(Colors.red, Colors.red[100], 'Activities', 0.15),
            ],
          ),
        ),
      )
    ]);
  }

  Widget travellometer(Color primaryColor, Color accentColor, String comment,
      double percentage) {
    double width = 325;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Stack(alignment: AlignmentDirectional.centerStart, children: [
        Container(
          height: 55,
          width: width,
          decoration: BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 55,
          width: width * percentage,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              comment,
              style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ))
      ]),
    );
  }
}
