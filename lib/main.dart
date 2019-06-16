import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import './redux/store.dart';
import './redux/models/app_state.dart';
import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
