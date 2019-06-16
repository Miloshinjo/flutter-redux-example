import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../redux/models/app_state.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (BuildContext context, _ViewModel viewModel) {
          return Text(
            viewModel.counter.toString(),
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
            ),
          );
        });
  }
}

class _ViewModel {
  final int counter;

  _ViewModel({@required this.counter});

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(counter: store.state.counter);
  }
}
