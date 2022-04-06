import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fly/Constants.dart';
import 'package:fly/fly_page.dart';
import 'package:fly/kayit_page.dart';

class GirisPage extends StatefulWidget {
  GirisPage({Key? key}) : super(key: key);

  @override
  State<GirisPage> createState() => _GirisPageState();
}

class _GirisPageState extends State<GirisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Constants.mavi3, Constants.mavi2]),
          ),
          child: Column(
            children: [
              RotationTransition(
                turns: new AlwaysStoppedAnimation(345 / 360),
                child: Image.asset(
                  "images/plane.png",
                  height: 150,
                  color: Constants.kmavi,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: 215,
                width: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Constants.kmavi.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                    color: Constants.beyaz,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 50,
                      width: 260,
                      decoration: BoxDecoration(
                        /* boxShadow: [
                          BoxShadow(
                            color: Constants.mor.withOpacity(.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(1, 1), // changes position of shadow
                          ),
                        ], */
                        borderRadius: BorderRadius.circular(24),
                        color: Constants.beyaz,
                      ),
                      child: TextField(
                        style: TextStyle(
                            color: Constants.kmavi,
                            fontSize: 15,
                            fontFamily: "LexendM"),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24)),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Constants.kmavi,
                              size: 28,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide:
                                  BorderSide(color: Constants.kmavi, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide:
                                  BorderSide(color: Constants.kmavi, width: 1),
                            ),
                            labelText: "Kullanıcı adı",
                            labelStyle: TextStyle(
                                color: Constants.kmavi,
                                fontFamily: "LexendM",
                                fontSize: 18)),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 50,
                      width: 260,
                      decoration: BoxDecoration(
                        /* boxShadow: [
                          BoxShadow(
                            color: Constants.mor.withOpacity(.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(1, 1), // changes position of shadow
                          ),
                        ], */
                        borderRadius: BorderRadius.circular(24),
                        color: Constants.beyaz,
                      ),
                      child: TextField(
                        style: TextStyle(
                            color: Constants.kmavi,
                            fontSize: 15,
                            fontFamily: "LexendM"),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24)),
                            prefixIcon: Icon(
                              Icons.password_outlined,
                              color: Constants.kmavi,
                              size: 28,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide:
                                  BorderSide(color: Constants.kmavi, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide:
                                  BorderSide(color: Constants.kmavi, width: 1),
                            ),
                            labelText: "Şifre",
                            labelStyle: TextStyle(
                                color: Constants.kmavi,
                                fontFamily: "LexendM",
                                fontSize: 18)),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: SizedBox(
                        height: 50,
                        width: 260,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FlyPage()));
                          },
                          child: Text(
                            "Giriş",
                            style: TextStyle(
                              fontFamily: "LexendB",
                              fontSize: 20,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Constants.kmavi),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(color: Constants.kmavi)))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hesabınız yok mu? Hemen ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "LexendM",
                        fontSize: 17),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => KayitPage())),
                    child: Text(
                      "Kayıt ol!",
                      style: TextStyle(
                          color: Constants.kmavi,
                          fontFamily: "LexendB",
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
