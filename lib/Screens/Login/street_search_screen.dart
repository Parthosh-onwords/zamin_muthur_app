import 'package:flutter/material.dart';

import 'home_screen.dart';

class StreetPage extends StatefulWidget {
  const StreetPage({Key? key}) : super(key: key);

  @override
  _StreetPageState createState() => _StreetPageState();
}

class _StreetPageState extends State<StreetPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
            center: Alignment(0.5, -0.5),
          ),
        ),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/Vector.png",
                scale: 3.2,
                height: height * 0.7,
              ),
              left: width * 0.4,
              right: -width * 0.2,
              top: -height * 0.10,
            ),
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Search your',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                    'Street name',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7434CF)),
                  ),
                ],
              ),
              top: height * 0.20,
              left: width * 0.047,
              right: width * 0.047,
            ),
            Positioned(
              child: Container(
                width: width * 0.8,
                height: height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2.0, 4.0),
                        spreadRadius: 3,
                        blurRadius: 9)
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      hintText: 'Search...',
                      filled: true,
                      fillColor: const Color(0xffFBF8FF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              top: height * 0.400,
              left: width * 0.024,
              right: width * 0.024,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: height * 0.192,
                  ),
                  height: height * 0.05,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff8949E9),
                        Color(0xff6324BB),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Finish',
                      style: TextStyle(
                          fontSize: height * 0.02, color: Colors.white),
                    ),
                  ),
                ),
              ),
              left: width * 0.3,
              right: width * 0.3,
              top: height * 0.33,
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: width * 0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/Saly-15.png", scale: 3.0),
                  ],
                ),
              ),
              top: height * 0.55,
              right: -width * 0.05,
            ),

          ],
        ),
      ),
    );
  }
}
