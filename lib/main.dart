import 'package:beamer/beamer.dart';
import 'package:flutchill/bloc/bloc.dart';
import 'package:flutchill/classes/setting.dart';
import 'package:flutchill/screens/home.dart';
import 'package:flutchill/screens/setting_details.dart';
import 'package:flutchill/screens/settings.dart';
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
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => const HomeScreen(),
        '/settings': (context, state, data) => const SettingsScreen(),
        '/settings/:setting': (context, state, data) {
          // Take the path parameter of interest from BeamState
          final settingId = state.pathParameters['settingId']!;
          // Collect arbitrary data that persists throughout navigation
          final info = (data as Setting).info;
          // Use BeamPage to define custom behavior
          return BeamPage(
            key: ValueKey('setting-$settingId'),
            title: 'Settings: #$settingId',
            popToNamed: '/',
            type: BeamPageType.scaleTransition,
            child: SettingDetailsScreen(settingId, info),
          );
        }
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
