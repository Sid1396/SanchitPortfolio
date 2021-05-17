import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TrackingScrollController scrollController = TrackingScrollController();
  final List<String> imgList = [
    'assets/images/ShopGoLocal.jpg',
    'assets/images/Qualus.jpg',
    'assets/images/GiveAsk.jpg',
    'assets/images/smit.jpg',
    'assets/images/foodiisoft.jpg',
    'assets/images/taapmaan.jpg'
  ];
  final List<String> imgListformobile = [
    'assets/images/shopgolocalMob.jpg',
    'assets/images/qualusMob.jpg',
    'assets/images/giveaskMob.jpg',
    'assets/images/smitMob.jpg',
    'assets/images/foodiisoftMob.jpg',
    'assets/images/tapmaanMob.jpg'
  ];

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus(),},
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(34, 0, 87, 1),
                    Color.fromRGBO(61, 0, 97, 1)
                  ])),
          child: ListView(
            children: [
              ResponsiveVisibility(
                child: forWeb(scrollController),
                visible: false,
                visibleWhen: [Condition.largerThan(name: MOBILE)],
              ),
              ResponsiveVisibility(
                child: forMobile(scrollController),
                visible: false,
                visibleWhen: [
                  Condition.smallerThan(name: MOBILE),
                  Condition.equals(name: MOBILE)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget forWeb(TrackingScrollController scrollController) {
    List<String> list = [
      'Android Developer',
      'Flutter Developer',
      'Ios Developer',
      'Freelancer'
    ];

    EdgeInsets margin = EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h);
    Size size = MediaQuery
        .of(context)
        .size;
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      controller: scrollController,
      children: [
        Container(
          margin: margin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sanchit Shinde ",
                      style: GoogleFonts.ubuntu(
                          fontSize: 14.sp,
                          color: Colors.white,

                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      "Portfolio.",
                      style: GoogleFonts.ubuntu(
                          fontSize: 14.sp,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Home",
                      style: GoogleFonts.ubuntu(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "About",
                      style: GoogleFonts.ubuntu(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("pos: "+scrollController.position.pixels.toString());
                        scrollController.animateTo(
                            1000, duration: Duration(milliseconds: 1000),
                            curve: Curves.ease);

                      },
                      child: Text(
                        "Projects",
                        style: GoogleFonts.ubuntu(
                            fontSize: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Contacts",
                      style: GoogleFonts.ubuntu(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: margin,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HELLO !",
                          style: GoogleFonts.ubuntu(
                              fontSize: 10.sp,
                              letterSpacing: 3,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "I Am Sanchit",
                          style: GoogleFonts.ubuntu(
                              fontSize: 20.sp,
                              letterSpacing: 3,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "A Professional",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            DefaultTextStyle(
                              style: GoogleFonts.ubuntu(
                                fontSize: 11.sp,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                                shadows: [
                                  Shadow(
                                    blurRadius: 3.0,
                                    color: Colors.deepPurpleAccent,
                                    offset: Offset(0, 0),
                                  ),
                                ],),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  for(var i in list) FlickerAnimatedText(i)
                                ],
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,
                                  width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Contact Me",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        )
                      ],
                    )),
                Expanded(
                    child: Lottie.network(
                        "https://assets8.lottiefiles.com/packages/lf20_wloxwco0.json",
                        fit: BoxFit.cover)),
              ],
            ),
          ),
        ),
        Expanded(child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: GestureDetector(
                      onTap: (){
                        print("pos: ");
                      },
                      child: Text("Projects",
                          style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none))),
                    ),
                  ),
                ),
                Container(

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height * 0.8,
                            child: CarouselSlider(
                              options: CarouselOptions(
                                  height: size.height * 0.8,
                                  viewportFraction: 1.0,
                                  autoPlayCurve: Curves.linear,
                                  enlargeCenterPage: true,
                                  autoPlay: true
                                // autoPlay: false,
                              ),
                              items: imgList
                                  .map((item) =>
                                  Container(
                                    child: Center(
                                        child: Image(
                                          image: AssetImage(item),
                                          fit: BoxFit.fill,
                                          height: size.height * 0.8,
                                        )),
                                  ))
                                  .toList(),
                            ),
                          ),
                        ])),
              ],
            )),)
      ],
    );
  }

  Widget forMobile(TrackingScrollController scrollController) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: ListView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sanchit Shinde ",
                style: GoogleFonts.ubuntu(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none),
              ),
              Text(
                "Portfolio.",
                style: GoogleFonts.ubuntu(
                    fontSize: 18.sp,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none),
              ),
            ],
          ),

          Expanded(
              child: Lottie.network(
                "https://assets8.lottiefiles.com/packages/lf20_wloxwco0.json",
                width: 60.w, height: 60.h,
              )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "HELLO !",
                            style: GoogleFonts.ubuntu(
                                fontSize: 10.sp,
                                letterSpacing: 3,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            "I Am Sanchit",
                            style: GoogleFonts.ubuntu(
                                fontSize: 20.sp,
                                letterSpacing: 3,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none),
                          ),
                          Text(
                            "A Professional Android Developer ",
                            style: GoogleFonts.ubuntu(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Contact Me",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
