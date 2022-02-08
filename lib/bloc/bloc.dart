import 'package:flutchill/bloc/settings/settings_bloc.dart';
import 'package:flutchill/bloc/shows/shows_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends StatelessWidget {
  final Widget child;
  const AppBloc({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShowsBloc>(
          create: (BuildContext context) => ShowsBloc(),
        ),
        BlocProvider<SettingsBloc>(
          create: (BuildContext context) => SettingsBloc(),
        ),
      ],
      child: child,
    );
  }
}
