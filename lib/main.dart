import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zamin_muthur_app/Screens/Login/street_search_screen.dart';
import 'Screens/Login/first_screen.dart';




//updated by parthosh on 24.3.2022/.....
//overall ui except updates done

//updated by mohan on 24.3.2022
//search Street screen.....,
void main() {
  //lock the rotation in land scape.......................
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: FirstScreen(),
      home: StreetPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
