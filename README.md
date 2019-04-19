# Flutter basic app using BLOC pattern

A Flutter project using the starting app with  BLOC and a StatelessWidget instead of a StatefulWidget.

To avoid to manually close the stream when using an InheritedWidget the BLOC provider is wrapped in a State.

Use this template as a starting project if you want to usee BLOC:

- Add your view (screen, page) in view folder.
- Add a bloc in bloc folder and extends Disposable.
- To use your bloc, use DisposableProvider to create an instance of your BLOC class.

## TODO
* Use rxDart instead of dart:async



