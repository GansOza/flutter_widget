import 'package:flutter/material.dart';

import 'app_bar.dart';

class ButtonScreen extends StatefulWidget {
  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const ExampleAppBar(
            title: "Hero Animation",
            showGoBack: true,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[







          ],)

        ],
      ),
    );
  }
}

