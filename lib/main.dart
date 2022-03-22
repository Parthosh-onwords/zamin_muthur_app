import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zamin_muthur_app/Screens/Login/home_screen.dart';
import 'Screens/Login/first_screen.dart';




//updated by parthosh on 23.3.2022
//overall firebase otp

//updated by mohan on 22.3.2022
//about village, profile, search, ration Screens
Future<void> main() async {
  //lock the rotation in land scape.......................
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: FirstScreen(),
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
