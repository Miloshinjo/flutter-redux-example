import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '0',
      style: TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
