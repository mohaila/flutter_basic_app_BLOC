import 'dart:async';

import 'disposable.dart';

class StartBloc implements Disposable {
  int _counter;

  final _counterController = StreamController<int>();
  final _actionController = StreamController();

  get _add => _counterController.sink.add;

  Stream<int> get countStream => _counterController.stream;

  get incrementCounter => _actionController.sink.add;

  StartBloc() {
    _counter = 0;
    _actionController.stream.listen(_handleLogic);
  }

  void dispose() {
    _actionController.close();
    _counterController.close();
  }

  void _handleLogic(data) {
    _counter = _counter + 1;
    _add(_counter);
  }
}
