
import 'package:flutter/material.dart';

import 'mobilenumber_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xffE1F1FC),
              Color(0xffF8F0FE),
            ],
            center: Alignment(0.5, -0.5),
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/Saly-7.png",
              height: height * 0.7,
            ),
            const Text(
              "Contrary to popular belief, Lorem\n"
              "sum is not simply random text.",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MobileNumberPage(),
                    ),
                  );
                });
              },
              child: Container(
                height: height * 0.065,
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
                    'Next',
                    style: TextStyle(
                        fontSize: height * 0.03, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
