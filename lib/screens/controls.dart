import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.remove),
          onPressed: () {
            print('Decrement');
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Increment');
          },
        ),
      ],
    );
  }
}
