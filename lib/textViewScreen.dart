import 'package:flutter/material.dart';

import 'app_bar.dart';
class TextViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const ExampleAppBar(
            title: "Text View",
            showGoBack: true,
          ),
          Container(
            child: Text("hello"),
          ),
          Container(
            child: Text("hello"),
          ),
          Container(
            child: Text("hello"),
          ),
          Container(
            child: Text("hello"),
          ),
        ],
      ),
    );
  }
}
