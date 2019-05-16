import 'package:flutter/material.dart';

import 'app_bar.dart';

class Heroanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),

      home: new MyHomePage(title: 'Hero Animation Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
      const ExampleAppBar(
      title: "Hero Animation",
        showGoBack: true,
      ),

      Hero(
          tag: 'flutterLogo',
          child: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder:       (context) => HeroExamplePage())),
              child: FlutterLogo(
                size: 100.0,colors: Colors.teal,
              ),),),

],),
    );
  }
}

class HeroExamplePage extends StatelessWidget {
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
         Hero(
            tag: 'flutterLogo',
            child: FlutterLogo(

              size: 300.0,colors: Colors.teal,

            )
        ),
      ]
    ),
    );
  }
}
