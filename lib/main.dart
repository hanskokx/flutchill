import 'package:beamer/beamer.dart';
import 'package:flutchill/bloc/bloc.dart';
import 'package:flutchill/constants/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    AppBloc(
      child: FlutChill(),
    ),
  );
}

class FlutChill extends StatelessWidget {
  FlutChill({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(
    locationBuilder: routes,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}
