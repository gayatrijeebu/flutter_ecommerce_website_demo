import 'package:flutter/material.dart';

class PhonesPage extends StatelessWidget {
  const PhonesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Phones Page',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}