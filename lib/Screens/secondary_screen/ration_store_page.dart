import 'package:flutter/material.dart';

class RationStorePage extends StatefulWidget {
  const RationStorePage({Key? key}) : super(key: key);

  @override
  _RationStorePageState createState() => _RationStorePageState();
}

class _RationStorePageState extends State<RationStorePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("hello ration store")),
    );
  }
}
