import 'package:flutter/material.dart';

class CallAmbulancePage extends StatefulWidget {
  const CallAmbulancePage({Key? key}) : super(key: key);

  @override
  _CallAmbulancePageState createState() => _CallAmbulancePageState();
}

class _CallAmbulancePageState extends State<CallAmbulancePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("hello ambulance")));
  }
}
