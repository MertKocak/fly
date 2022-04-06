import 'package:flutter/material.dart';
import 'package:fly/Constants.dart';
import 'package:fly/fly_page.dart';

class PPage extends StatefulWidget {
  PPage({Key? key}) : super(key: key);

  @override
  State<PPage> createState() => _PPageState();
}

class _PPageState extends State<PPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(color: Constants.beyaz),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlyPage()));
              },
              child: Icon(
                Icons.home_filled,
                color: Constants.kmavi,
                size: 32,
              ),
            ),
            Icon(
              Icons.airplane_ticket_outlined,
              color: Constants.kmavi,
              size: 32,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PPage()));
              },
              child: Icon(
                Icons.person,
                color: Constants.kmavi,
                size: 32,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Constants.mavi3,
                Constants.mavi2,
              ]),
        ),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          RotationTransition(
            turns: new AlwaysStoppedAnimation(345 / 360),
            child: Image.asset(
              "images/plane.png",
              height: 100,
              color: Constants.kmavi,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Constants.kmavi),
                  child: Stack(children: [
                    Center(
                        child: Text(
                      "M",
                      style: TextStyle(
                          fontFamily: "LexendB",
                          fontSize: 32,
                          color: Constants.beyaz),
                    ))
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Mert Koçak",
                  style: TextStyle(
                      fontFamily: "LexendB",
                      fontSize: 24,
                      color: Constants.kmavi),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
