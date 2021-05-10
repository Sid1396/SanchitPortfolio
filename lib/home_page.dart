import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(34, 0, 87, 1),
            Color.fromRGBO(61, 0, 97, 1)
          ])),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sanchit Shinde",
                    style: GoogleFonts.ubuntu(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none),
                  ),
                  Row(
                    children: [
                      Text(
                        "Home",
                        style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "About",
                        style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Projects",
                        style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Contacts",
                        style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "HELLO !",
                            style: GoogleFonts.ubuntu(
                                fontSize: 20,
                                letterSpacing: 3,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "I Am Sanchit",
                            style: GoogleFonts.ubuntu(
                                fontSize: 120,
                                letterSpacing: 3,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "A Professional Android Developer ",
                            style: GoogleFonts.ubuntu(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Contact Me",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_wloxwco0.json",fit: BoxFit.cover),
                    )),
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
