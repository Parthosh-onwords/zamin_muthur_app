import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../secondary_screen/about_village_page.dart';
import '../secondary_screen/bus_timing_page.dart';
import '../secondary_screen/call_ambulance_page.dart';
import '../secondary_screen/call_police_page.dart';
import '../secondary_screen/profile_page.dart';
import '../secondary_screen/ration_store_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(keepPage: true);


//In build


  double percent = 100;
  List listPaths = ["1","1","1"];

  late Timer timer;

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (mounted) {
        setState(() {
          percent -= 1;
          if (percent == 0) {
            timer.cancel();
            percent = 0.0;
          }
        });
      }
    });
  }

int currentPos= 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: height * 0.04, left: width * 0.04, right: width * 0.04),
        decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
              center: Alignment(0.5, -0.5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                      // print("hey I am Working Location");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/Vector.png',
                        scale: 4.5,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "Zamin muthur",
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ProfilePage()));
                  },
                  child: Container(
                    height: height * 0.050,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        gradient:  const LinearGradient(
                            colors: [Color(0xff8949E9), Color(0xff6324BB)])),
                    child: Center(
                      child: Image.asset(
                        "assets/Vector (1).png",
                        scale: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Center(
              child: Container(
                padding:
                    EdgeInsets.only(left: width * 0.030, right: width * 0.1),
                height: height * 0.18,
                width: width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffFFB594),
                        Color(0xff6728C0),
                      ],
                    ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularPercentIndicator(
                      radius: 60,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      percent: 70 / 100,
                      //percent/100,
                      animateFromLastPercent: true,
                      lineWidth: 10,
                      progressColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      center: Text(
                        "23\nMins",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: height * 0.016,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.06, left: width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Street Water',
                            style: TextStyle(
                                fontSize: height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Remaining time',
                            style: TextStyle(
                                fontSize: height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: Text(
                "Panchayat Notices",
                style: TextStyle(
                    fontSize: height * 0.019, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: SizedBox(
                  height: height * 0.2,
                  width: width * 0.9,
                  child:
                  CarouselSlider(
                      items: [
                            noticeContainer(height,width),
                            noticeContainer(height,width),
                            noticeContainer(height,width),
                      ],
                    options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentPos = index;
                                });
                              },
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      enableInfiniteScroll: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      aspectRatio: 0.20,
                      initialPage: 0,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  ),
                ),
              ),    // )),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(listPaths.length,currentPos)
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SizedBox(
              height: height * 0.2,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  mainStoreAndBusContainer(height, width,  "assets/Vector (5).png" ,"Ration Store",const RationStorePage()),
                  mainStoreAndBusContainer(height, width,  "assets/Vector (6).png" ,"Bus Timing",const BusTimingPage()),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                smallContainers(height, width,'assets/Vector (4).png',"Call police",const CallPolicePage()),
                smallContainers(height, width,'assets/Vector (3).png',"Call Ambulance",const CallAmbulancePage()),
                smallContainers(height, width,'assets/Vector (7).png',"About village",const AboutVillagePage()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column smallContainers(double height, double width,String img,String name,Widget room) {
    return Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => room));
                      // print("hey I am Working (Police)");
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Color(0xff8949E9), Color(0xff6324BB)],
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          img,
                          scale: 2.8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Center(
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: height * 0.015,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              );
  }

  GestureDetector mainStoreAndBusContainer(double height, double width,String img,String name,Widget room) {
    return GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => room));
                    // print("hey I am Working (Ration Store");
                  },
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    padding: const EdgeInsets.only(right: 10,left: 17,top: 25,bottom: 25),
                    height: height * 0.20,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 0.0),
                            spreadRadius: 1,
                            blurRadius: 1),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          img,
                          scale: 3.5,
                          color: const Color(0xff6324BB),
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
  }

  List<Widget> indicators(imagesLength,currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return AnimatedContainer(
        margin: EdgeInsets.all(3),
        width: 30,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? Colors.black : Colors.black26,
            // shape: BoxShape.circle
      ), duration: const Duration(milliseconds: 500),


      );
    });
  }

  Center noticeContainer(double height,double width) {
    return Center(
      child: Container(
        height: height*0.3,
        width: width * 0.9,
        //margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: const Color(0xffFBF8FF),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: Text(
            "Lorem ipsum",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xffBBBBBB),
            ),
          ),
        ),
      ),
    );
  }
}
