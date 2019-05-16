import 'package:flutter/material.dart';

import 'app_bar.dart';
class TextViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          children: <Widget>[
            const ExampleAppBar(
              title: "Text View",
              showGoBack: true,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(50.0)),
                Container(
                  child: Text("Text first",style: TextStyle(
                    color: Colors.red,fontSize: 20.0,fontStyle:FontStyle.normal,
                  ),),
                ),
                SizedBox.fromSize(
                    size: Size(20.0, 20.0),
                ),
                Container(
                  child: Text("Text second",style: TextStyle(
                    color: Colors.orange,fontSize: 30.0,fontWeight: FontWeight.bold,

                  ),),
                ),
                SizedBox.fromSize(
                  size: Size(20.0, 20.0),
                ),
                Container(
                  child: Text("Text third",style: TextStyle(
                    color: Colors.red,fontSize: 20.0,letterSpacing: 3.0,
                  ),),
                ),
                SizedBox.fromSize(
                  size: Size(20.0, 20.0),
                ),
                Container(
                  child: Text("hello"),
                ),

              ],
            ),
          ],
        ),
      )
    );
  }
}
