import 'package:flutter/material.dart';

class ShowDetailsScreen extends StatelessWidget {
  final int? showId;
  const ShowDetailsScreen({
    Key? key,
    this.showId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('$showId');
  }
}
