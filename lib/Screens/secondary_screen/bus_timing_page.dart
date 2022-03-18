import 'package:flutter/material.dart';

class BusTimingPage extends StatefulWidget {
  const BusTimingPage({Key? key}) : super(key: key);

  @override
  _BusTimingPageState createState() => _BusTimingPageState();
}

class _BusTimingPageState extends State<BusTimingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("hello bus timing")),
    );
  }
}
