import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const <Widget>[
        // two text fields, one for email and one for password
        TextField(
          decoration: InputDecoration(
            hintText: 'Email',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
          ),
        ),
      ],
    );
  }
}
