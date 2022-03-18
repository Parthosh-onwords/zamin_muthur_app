import 'package:flutter/material.dart';

class CallPolicePage extends StatefulWidget {
  const CallPolicePage({Key? key}) : super(key: key);

  @override
  _CallPolicePageState createState() => _CallPolicePageState();
}

class _CallPolicePageState extends State<CallPolicePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("hello police")),
    );
  }
}
