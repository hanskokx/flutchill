import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.network('https://sickchill.github.io/images/logo.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Transform.rotate(
                    angle: 270,
                    child: const Text(
                      'Flut',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 10.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('My Shows'),
            onTap: () {
              Beamer.of(context).beamToNamed('/shows');
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Beamer.of(context).beamToNamed('/settings');
            },
          ),
        ],
      ),
    );
  }
}
