import 'dart:convert';
import 'dart:ffi';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:fly/Constants.dart';
import 'package:fly/home_page.dart';
import 'package:fly/profile_page.dart';
import 'package:intl/intl.dart';

class FlyPage extends StatefulWidget {
  FlyPage({Key? key}) : super(key: key);

  @override
  State<FlyPage> createState() => _FlyPageState();
}

class _FlyPageState extends State<FlyPage> {
  List<bool> isSelected = [true, false];
  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  DateTime? _myDateTime;

  String time = DateFormat("dd-MM-yy").format(DateTime.now());
  int secilen = 1;

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
                /* onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PPage()));
                }, */
                child: Icon(
                  Icons.person,
                  color: Constants.kmavi,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Container(
            height: 800,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Constants.mavi3, Constants.mavi2]),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Merhaba Mert,\nNereyi keşfetmek istersin?",
                              style: TextStyle(
                                  fontFamily: "LexendM",
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 33, 33, 33))),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 360,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Constants.kmavi.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Constants.beyaz,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: ToggleButtons(
                              highlightColor: Constants.mavi3,
                              borderColor: Constants.kmavi,
                              fillColor: Constants.mavi3,
                              borderWidth: 1,
                              selectedBorderColor: Constants.kmavi,
                              //selectedColor: Color.fromARGB(255, 244, 181, 255),
                              borderRadius: BorderRadius.circular(24),
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    ' Tek yön ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "LexendM",
                                        color: Constants.kmavi),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    ' Gidiş-Dönüş ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "LexendM",
                                        color: Constants.kmavi),
                                  ),
                                ),
                              ],
                              onPressed: (int index) {
                                setState(() {
                                  for (int i = 0; i < isSelected.length; i++) {
                                    isSelected[i] = i == index;
                                  }
                                });
                              },
                              isSelected: isSelected,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Divider(
                        color: Constants.kmavi.withOpacity(1),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 2, right: 2, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Constants.beyaz,
                                /* boxShadow: [
                              BoxShadow(
                                color: Constants.mor.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(1, 2), // changes position of shadow
                              ),
                            ], */
                              ),
                              child: TextField(
                                style: TextStyle(
                                    color: Constants.kmavi,
                                    fontSize: 15,
                                    fontFamily: "LexendM"),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    prefixIcon: Icon(
                                      Icons.airplane_ticket,
                                      color: Constants.kmavi,
                                      size: 28,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                          color: Constants.kmavi, width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                          color: Constants.kmavi, width: 1),
                                    ),
                                    labelText: "Nereden",
                                    labelStyle: TextStyle(
                                        color: Constants.kmavi,
                                        fontFamily: "LexendM",
                                        fontSize: 18)),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Constants.beyaz,
                                /* boxShadow: [
                              BoxShadow(
                                color: Constants.mor.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(1, 2), // changes position of shadow
                              ),
                            ], */
                              ),
                              child: TextField(
                                style: TextStyle(
                                    color: Constants.kmavi,
                                    fontSize: 15,
                                    fontFamily: "LexendM"),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    prefixIcon: Icon(
                                      Icons.airplane_ticket_outlined,
                                      color: Constants.kmavi,
                                      size: 28,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                          color: Constants.kmavi, width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                          color: Constants.kmavi, width: 1),
                                    ),
                                    labelText: "Nereye",
                                    labelStyle: TextStyle(
                                        color: Constants.kmavi,
                                        fontFamily: "LexendM",
                                        fontSize: 18)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 2, right: 2, top: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 44,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                /* boxShadow: [
                              BoxShadow(
                                color: Constants.mor.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(1, 2), // changes position of shadow
                              ),
                            ], */
                              ),
                              child: ElevatedButton.icon(
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: Constants.kmavi,
                                ),
                                label: Text(
                                  "Tarih seçiniz",
                                  style: TextStyle(
                                      fontFamily: "LexendM",
                                      fontSize: 14.5,
                                      color: Constants.kmavi),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Constants.beyaz),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          side: BorderSide(
                                              color: Constants.kmavi, width: 1))),
                                ),
                                onPressed: () async {
                                  _myDateTime = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2010),
                                      lastDate: DateTime(2025));

                                  setState(() {
                                    time = DateFormat("dd-MM-yy")
                                        .format(_myDateTime!);
                                  });
                                },
                              ),
                            ),
                            Container(
                              height: 44,
                              width: 150,
                              decoration: BoxDecoration(
                                  /* boxShadow: [
                                BoxShadow(
                                  color: Constants.mor.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      1, 2), // changes position of shadow
                                ),
                              ], */
                                  border: Border.all(
                                      width: 1, color: Constants.kmavi),
                                  color: Constants.mavi3,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(time,
                                    style: TextStyle(
                                        fontFamily: "LexendM",
                                        fontSize: 16,
                                        color: Constants.kmavi)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, top: 18, right: 6, bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              /* boxShadow: [
                            BoxShadow(
                              color: Constants.mor.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(1, 2), // changes position of shadow
                            ),
                          ], */
                              color: Constants.beyaz,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 1, color: Constants.kmavi)),
                          child: SizedBox(
                            height: 40,
                            width: 120,
                            child: DropdownButton<int>(
                              iconSize: 32,
                              iconEnabledColor: Constants.kmavi,
                              isExpanded: true,
                              value: secilen,
                              onChanged: (deger) {
                                setState(() {
                                  secilen = deger!;
                                });
                              },
                              underline: Container(),
                              items: [
                                DropdownMenuItem(
                                  child: Center(
                                    child: Text(
                                      'Öğrenci',
                                      style: TextStyle(
                                          color: Constants.kmavi,
                                          fontFamily: "LexendM",
                                          fontSize: 16),
                                    ),
                                  ),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Center(
                                    child: Text('Yetişkin',
                                        style: TextStyle(
                                            color: Constants.kmavi,
                                            fontFamily: "LexendM",
                                            fontSize: 16)),
                                  ),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Center(
                                    child: Text('Çocuk',
                                        style: TextStyle(
                                            color: Constants.kmavi,
                                            fontFamily: "LexendM",
                                            fontSize: 16)),
                                  ),
                                  value: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "UÇUŞ ARA",
                              style: TextStyle(
                                  fontFamily: "LexendB", fontSize: 18),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Constants.kmavi),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        side:
                                            BorderSide(color: Constants.kmavi)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Uçuşlarım",
                              style: TextStyle(
                                  fontFamily: "LexendM",
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 33, 33, 33))),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 180,
                  width: 330,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Constants.beyaz.withOpacity(.8),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                      color: Constants.kmavi,
                      borderRadius: BorderRadius.circular(40)),
                  child: Stack(children: [
                    Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Constants.beyaz),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Center(
                        child: Image.asset(
                          "images/plane.png",
                          height: 70,
                          color: Constants.kmavi,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 20,
                      child: Column(
                        children: [
                          Text(
                            "SAW",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "LexendB",
                                fontSize: 24),
                          ),
                          Text(
                            "İstanbul",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                fontFamily: "LexendL",
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 20,
                      child: Column(
                        children: [
                          Text(
                            "VAS",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "LexendB",
                                fontSize: 24),
                          ),
                          Text(
                            "Sivas",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                fontFamily: "LexendL",
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        left: 30,
                        top: 120,
                        child: Text("Tarih",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                fontFamily: "LexendM",
                                fontSize: 18))),
                    Positioned(
                        left: 30,
                        top: 142,
                        child: Text("23.09.2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "LexendL",
                                fontSize: 14))),
                    Positioned(
                        left: 250,
                        top: 121,
                        child: Text("Uçuş No",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                fontFamily: "LexendM",
                                fontSize: 16))),
                    Positioned(
                        left: 250,
                        top: 142,
                        child: Text("TK7374",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "LexendL",
                                fontSize: 14))),
                  ]),
                )
              ],
            ),
          ),
        ]));
  }
}
