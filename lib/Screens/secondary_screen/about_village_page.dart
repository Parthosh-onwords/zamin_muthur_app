import 'package:flutter/material.dart';

class AboutVillagePage extends StatefulWidget {
  const AboutVillagePage({Key? key}) : super(key: key);

  @override
  _AboutVillagePageState createState() => _AboutVillagePageState();
}

class _AboutVillagePageState extends State<AboutVillagePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("hello village ")),
    );
  }
}
