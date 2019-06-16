import '../actions/counter_actions.dart';

int counterReducer(int counter, action) {
  if (action is IncrementCountAction) {
    int newCounter = counter + 1;
    return newCounter;
  } else if (action is DecrementCountAction) {
    int newCounter = counter - 1;
    return newCounter;
  } else {
    return counter;
  }
}
