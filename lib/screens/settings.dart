import 'package:flutchill/bloc/settings/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return const SafeArea(
          child: Scaffold(
            body: Center(
              child: Text('Settings screen'),
            ),
          ),
        );
      },
    );
  }
}
