import 'package:flutter/material.dart';

class SettingDetailsScreen extends StatelessWidget {
  final String? setting;
  const SettingDetailsScreen({
    Key? key,
    this.setting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('$setting');
  }
}
