import 'package:flutter/material.dart';

import '../bloc/startbloc.dart';
import '../bloc/disposableprovider.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final StartBloc bloc = DisposableProvider.of<StartBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('BLOC Basic App')),
      body: Center(
        child: StreamBuilder<bool>(
          stream: bloc.buildStream,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            return Text(
              '${bloc.counter}',
              style: TextStyle(
                fontSize: 64,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          bloc.incrementCounter();
        },
      ),
    );
  }
}
