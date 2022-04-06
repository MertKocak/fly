import 'package:flutter/material.dart';
import 'package:fly/Constants.dart';
import 'package:fly/fly_page.dart';
import 'package:fly/giris_page.dart';
import 'package:fly/kayit_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                height: 270,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 8),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Constants.kmavi,
                        Constants.mavi2,
                      ]),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 50,
                        left: -20,
                        child: Image.asset(
                          "images/cloud.png",
                          height: 50,
                        )),
                    Positioned(
                        top: 95,
                        left: 100,
                        child: Image.asset(
                          "images/cloud.png",
                          height: 60,
                        )),
                    Positioned(
                        top: 170,
                        left: 10,
                        child: Image.asset(
                          "images/cloud.png",
                          height: 55,
                        )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GirisPage()));
                },
                child: Text(
                  "Giriş",
                  style: TextStyle(
                    fontFamily: "LexendB",
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Constants.kmavi),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                            side: BorderSide(color: Constants.kmavi)))),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KayitPage()));
                },
                child: Text(
                  "Kayıt Ol",
                  style: TextStyle(fontFamily: "LexendB", fontSize: 20),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Constants.kmavi),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                            side: BorderSide(color: Constants.kmavi)))),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
