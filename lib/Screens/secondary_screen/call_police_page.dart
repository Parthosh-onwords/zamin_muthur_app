import 'package:flutter/material.dart';

class CallPolicePage extends StatefulWidget {
  const CallPolicePage({Key? key}) : super(key: key);

  @override
  _CallPolicePageState createState() => _CallPolicePageState();
}

class _CallPolicePageState extends State<CallPolicePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top:height*0.05,bottom: height*0.01),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(249, 240, 255 , 1.0)
          // gradient: RadialGradient(
          //     colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
          //     center: Alignment(0.5, -0.5)),
        ),
        child: Stack(
          children:[
            Positioned(
              top: height*0.025,
              right: width*-0.1,
              width: width*0.6,
              height: height*0.3,
              child: Container(
                // width: 80,
                // height: height*0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 40,
                          color: Color.fromRGBO(125, 61, 219,0.1),
                          offset: Offset(1.0,5.0)
                      )
                    ]
                ),

              ),
            ),
            Positioned(
              top: height*0.55,
              left: width*-0.2,
              width: width*0.6,
              height: height*0.3,
              child: Container(
                // width: 80,
                // height: height*0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 40,
                          color: Color.fromRGBO(255, 242, 223,0.70),
                          offset: Offset(1.0,5.0)
                      )
                    ]
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: height*0.01,left: height*0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,size: height*0.022,)),
                      SizedBox(
                        width: width*0.03,
                      ),
                      Text("Call Police",style: TextStyle(fontSize: height*0.018,fontFamily: 'Nexa'),)
                    ],
                  ),
                  SizedBox(
                    height:height*0.03,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context,int index){
                          return Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/Vector (4).png',scale: 2.7,),
                                SizedBox(
                                  width: width*0.08,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Police Station",
                                      style: TextStyle(fontSize: height*0.015,
                                        fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w500),),
                                    Text("9566457895",
                                      style: TextStyle(fontSize: height*0.010,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade500,
                                    ),),
                                  ],
                                ),
                                SizedBox(
                                  width: width*0.20,
                                ),
                                const Icon(Icons.call,size: 30.0,color: Color.fromRGBO(125, 61, 219,1.0))
                              ],),
                          );
                        }
                    ),
                  )
                ],
              ),
            ),

          ],


        ),
      ),
    );
  }
}
