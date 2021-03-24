import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  static const routeName = '/demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Screen'.toUpperCase()),
      ),
      body: Center(
        child: Text(
          'Demo Screen'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
