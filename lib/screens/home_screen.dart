import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Redux'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}
