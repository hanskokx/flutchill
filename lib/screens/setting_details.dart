import 'package:flutter/material.dart';

class SettingDetailsScreen extends StatelessWidget {
  const SettingDetailsScreen(settingId, info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Settings details screen'),
        ),
      ),
    );
  }
}
