import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Redux'),
      ),
      body: Container(
        child: Center(child: Text('Home Screen')),
      ),
    );
  }
}
