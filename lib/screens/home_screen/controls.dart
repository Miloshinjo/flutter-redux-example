import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../redux/actions/counter_actions.dart';
import '../../redux/models/app_state.dart';

class Controls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StoreConnector<AppState, VoidCallback>(
            converter: (Store<AppState> store) => () {
                  store.dispatch(DecrementCountAction());
                },
            builder: (BuildContext context, decrement) {
              return RaisedButton(
                child: Icon(Icons.remove),
                onPressed: decrement,
              );
            }),
        SizedBox(
          width: 10.0,
        ),
        StoreConnector<AppState, VoidCallback>(
            converter: (Store<AppState> store) => () {
                  store.dispatch(IncrementCountAction());
                },
            builder: (BuildContext context, increment) {
              return RaisedButton(
                child: Icon(Icons.add),
                onPressed: increment,
              );
            }),
      ],
    );
  }
}
