class AppState {
  final int counter;

  AppState({this.counter = 0});

  AppState copyWith({int counter}) {
    return AppState(
      counter: counter ?? this.counter,
    );
  }

  @override
  String toString() {
    return 'AppState{counter: $counter}';
  }
}
