import 'package:redux/redux.dart';

import './reducers/app_reducer.dart';
import './models/app_state.dart';

final Store store = Store<AppState>(
  appReducer,
  initialState: AppState(),
  middleware: [],
);
