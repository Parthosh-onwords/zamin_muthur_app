import 'package:flutter/material.dart';

class AboutVillagePage extends StatefulWidget {
  const AboutVillagePage({Key? key}) : super(key: key);

  @override
  _AboutVillagePageState createState() => _AboutVillagePageState();
}

class _AboutVillagePageState extends State<AboutVillagePage> {
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
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    //Title and back arrow.............................
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
                          width: width * 0.025,
                        ),
                        Text(
                          "About Village",
                          style: TextStyle(
                            fontSize: height * 0.015,
                            fontFamily: "Nexa",
                            // fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    //Village Name and Location...........................
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Zamin muthur",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Avenir",
                                    fontSize: height * 0.020),
                              ),
                              Text(
                                "ஜமீன் முத்தூர்",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: "Avenir",
                                    fontSize: height * 0.015),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                "Estd.1921",
                                style: TextStyle(fontSize: height * 0.012,fontFamily: "Avenir",),
                              )
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: width * 0.08),
                          height: height * 0.13,
                          width: width * 0.30,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(30)),
                        )
                      ],
                    ),
                    //Image Slider........................................
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Photos",
                            style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: height * 0.013,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff6C2CC6),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Center(
                            child: Container(
                                height: height * 0.13,
                                width: double.infinity,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      PhotosContainer(Colors.amber),
                                      PhotosContainer(Colors.black),
                                      PhotosContainer(Colors.black),
                                      PhotosContainer(Colors.amber),
                                      PhotosContainer(Colors.black),
                                      PhotosContainer(Colors.black)
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    //About Village.......................................
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About Zamin muthur",
                            style: TextStyle(
                              fontSize: height * 0.013,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff6C2CC6),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "Pincode for Zamin Muthur in Pollachi ,"
                                " Coimbatore is 642005. Based on the postal code, "
                                "this is SUB post office and pin code is allocated to "
                                "Pollachi divisional post office in the region of "
                                "Coimbatore in Postal department. The first two digit"
                                " of pin code denotes 64, which is listed in Tamilnadu."
                                "This postal area was searched by 27 users in last 20 days."
                                " The post master name, address phone number can be found.",
                            style: TextStyle(
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w500,
                                fontSize: height * 0.010),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          AddressDetails(height, "Pincode", "642005"),
                          AddressDetails(
                              height, "Post office location", "ZAMIN MUTHUR"),
                          AddressDetails(height, "Taluk ", "POLLACHI"),
                          AddressDetails(height, "District ", "COIMBATORE"),
                          AddressDetails(
                              height, "Post office type", "SUB post office"),
                          AddressDetails(height, "Division ", "POLLACHI"),
                          AddressDetails(height, "Post Region ", "COIMBATORE"),
                          AddressDetails(height, "Post Circle ", "TAMILNADU"),
                          AddressDetails(height, "State  ", "TAMILNADU"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column AddressDetails(double height, String title, String address) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
                fontSize: height * 0.013,
                fontWeight: FontWeight.w500,
                color: Color(0xff6C2CC6)),
          ),
          trailing: Text(
            address,
            style: TextStyle(
              fontFamily: "Avenir",
              fontSize: height * 0.013,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Container PhotosContainer(Color color) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.3,
      height: height * 0.15,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // image: DecorationImage(
          //   image: NetworkImage("ADD IMAGE URL HERE"),
          //   fit: BoxFit.cover,
          // ),
          color: color),
    );
  }
}
