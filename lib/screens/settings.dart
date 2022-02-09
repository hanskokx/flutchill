import 'package:beamer/beamer.dart';
import 'package:flutchill/bloc/settings/settings_bloc.dart';
import 'package:flutchill/screens/setting_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => ['/settings/:setting'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
        key: ValueKey('settings'),
        child: SettingsScreen(),
      ),
      if (state.uri.pathSegments.contains('settings'))
        const BeamPage(
          key: ValueKey('settings'),
          child: SettingsScreen(),
        ),
    ];
    final String? settingParameter = state.pathParameters['setting'];
    if (settingParameter != null) {
      pages.add(
        BeamPage(
          key: ValueKey('setting-$settingParameter'),
          title: 'Setting: $settingParameter',
          child: SettingDetailsScreen(setting: settingParameter),
        ),
      );
    }
    return pages;
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('Settings screen'),
            ),
          ),
        );
      },
    );
  }
}
