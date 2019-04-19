import 'package:flutter/material.dart';

import 'bloc/startbloc.dart';
import 'bloc/disposableprovider.dart';
import 'view/startview.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streams Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DisposableProvider<StartBloc>(
        bloc: StartBloc(),
        child: StartView(),
      ),
    );
  }
}
