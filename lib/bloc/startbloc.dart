import 'dart:async';

import 'disposable.dart';

class StartBloc implements Disposable {
  int _counter;

  final _controller = StreamController<bool>();

  get _add => _controller.sink.add;

  Stream<bool> get buildStream => _controller.stream;

  int get counter => _counter;

  StartBloc() {
    _counter = 0;
  }

  void dispose() {
    _controller.close();
  }

  void incrementCounter() {
    _counter = _counter + 1;
    _add(true);
  }
}
