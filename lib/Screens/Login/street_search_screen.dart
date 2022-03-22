import 'package:flutter/material.dart';
import 'package:input_history_text_field/input_history_text_field.dart';
import 'home_screen.dart';



Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}



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
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(249, 240, 255 , 1.0),
        ),
        width: double.infinity,
        child: Stack(
          children: [
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
              width: width*0.8,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Nexa'),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                    'Street name',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,fontFamily: 'Nexa',
                        color: Color(0xff7434CF)),
                  ),
                ],
              ),
              top: height * 0.20,
              left: width * 0.11,
              right: width * 0.047,
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]),
                child: InputHistoryTextField(
                  decoration: InputDecoration(
                    label: Text("Search"),
                  ),
                  enableHistory: true,
                  enableSuggestions: true,
                  enableSave: true,
                  historyKey: "5",
                  listStyle: ListStyle.List,
                  lockBackgroundColor: Colors.brown.withAlpha(90),
                  lockTextColor: Colors.black,
                  lockItems: [
                    "Flutter",
                    "Ios",
                    "Java",
                    "Python",
                    "C++",
                    "Android",
                    "Html",
                    "JavaScript",
                  ],
                  showHistoryIcon: true,
                  deleteIconColor: Colors.white,
                  textColor: Colors.white,
                  backgroundColor: Colors.white12,
                ),
              ),
              top: height * 0.400,
              left: width * 0.044,
              right: width * 0.044,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(_createRoute());
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
                        Color(0xff8949E9),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Finish',
                      style: TextStyle(
                          fontSize: height * 0.015, color: Colors.white,fontFamily: 'Nexa'),
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


