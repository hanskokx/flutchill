import 'package:beamer/beamer.dart';
import 'package:flutchill/bloc/shows/shows_bloc.dart';
import 'package:flutchill/screens/show_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowsLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => ['/shows/:showId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
        key: ValueKey('shows'),
        child: ShowsScreen(),
      ),
      if (state.uri.pathSegments.contains('shows'))
        const BeamPage(
          key: ValueKey('shows'),
          child: ShowsScreen(),
        ),
    ];
    final String? showIdParameter = state.pathParameters['showId'];
    if (showIdParameter != null) {
      final showId = int.tryParse(showIdParameter);
      pages.add(
        BeamPage(
          key: ValueKey('show-$showIdParameter'),
          title: 'Show #$showIdParameter',
          child: ShowDetailsScreen(showId: showId),
        ),
      );
    }
    return pages;
  }
}

class ShowsScreen extends StatelessWidget {
  const ShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowsBloc, ShowsState>(
      builder: (context, state) {
        return const Center(
          child: Text('Shows screen'),
        );
      },
    );
  }
}
