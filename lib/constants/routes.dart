import 'package:beamer/beamer.dart';
import 'package:flutchill/screens/settings.dart';
import 'package:flutchill/screens/shows.dart';
import 'package:flutchill/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

final BeamerDelegate routerDelegate = BeamerDelegate(
  initialPath: '/home',
  locationBuilder: RoutesLocationBuilder(
    routes: {
      // Return either Widgets or BeamPages if more customization is needed
      '/*': (context, state, data) {
        final beamerKey = GlobalKey<BeamerState>();

        return Scaffold(
          appBar: AppBar(
            title: const Text('FlutChill'),
          ),
          drawer: const NavigationDrawer(),
          body: Beamer(
            key: beamerKey,
            routerDelegate: BeamerDelegate(
              locationBuilder: BeamerLocationBuilder(
                beamLocations: [
                  ShowsLocation(),
                  SettingsLocation(),
                ],
              ),
            ),
          ),
        );
      },
    },
  ),
);
