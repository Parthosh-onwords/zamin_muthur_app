import 'package:flutter/material.dart';

class RationStorePage extends StatefulWidget {
  const RationStorePage({Key? key}) : super(key: key);

  @override
  _RationStorePageState createState() => _RationStorePageState();
}

class _RationStorePageState extends State<RationStorePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: height * 0.025,
              right: width * -0.1,
              width: width * 0.6,
              height: height * 0.3,
              child: Container(
                // width: 80,
                // height: height*0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 40,
                          color: Color(0xffE1F1FC),
                          offset: Offset(1.0, 5.0))
                    ]),
              ),
            ),
            Positioned(
              top: height * 0.55,
              left: width * -0.2,
              width: width * 0.6,
              height: height * 0.3,
              child: Container(
                // width: 80,
                // height: height*0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 40,
                          color: Color(0xffFFF2DF),
                          offset: Offset(1.0, 5.0))
                    ]),
              ),
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: height * 0.012,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          "Ration store",
                          style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.5,
                        ),
                        Text(
                          "March",
                          style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    contentContainer(width, height),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    contentContainer(width, height),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    contentContainer(width, height)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container contentContainer(double width, double height) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.03),
            child: Text("03-03-2022"),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            height: height * 0.20,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffFBF8FF),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 10,
                    offset: Offset(1.0, 1.0))
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                itemsName(height),
                itemsName(height),
                itemsName(height),
                itemsName(height),
                itemsName(height),
                itemsName(height),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row itemsName(double height) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "data",
          style: TextStyle(
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: height * 0.010),
        ),
        Text(
          "data",
          style: TextStyle(
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: height * 0.010),
        ),
      ],
    );
  }
}
