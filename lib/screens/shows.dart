import 'package:flutchill/bloc/shows/shows_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowsScreen extends StatelessWidget {
  const ShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowsBloc, ShowsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('Shows screen'),
            ),
          ),
        );
      },
    );
  }
}
