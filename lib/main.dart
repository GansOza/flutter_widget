import 'dart:core';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_widget/seekBar.dart';
import 'package:flutter_widget/textViewScreen.dart';
import 'buttonScreen.dart';
import 'cardview.dart';
import 'checkbox.dart';
import 'datePicker.dart';
import 'googleMap.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: "My Widgets",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 String title ="My Widgets";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
      ),
      body:MyHomeScreen() ,
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  List<String> data=[
    "TextView & EditText",
    "Button",
    "CheckBox & RadioButton",
    "Card",
    "Date & Time Picker",
    "GoogleMap",
    "SeekBar & RatingBar",
    "SearchBar",
    "Loading or Progress bar",
    "Toggle Button & spinner"
    "Image   View & Icons",
    "Camera Activity",
    "Alert Dialogbox",
    "Layout:(Row-Column)",
    "Grid View"];

  final icons = [
    Icons.text_fields,
    Icons.edit_attributes,
    Icons.check_box,
    Icons.card_giftcard,
    Icons.date_range,
    Icons.map,
    Icons.settings_ethernet,
    Icons.search,
    Icons.sync_problem,
    Icons.arrow_drop_down_circle,

    Icons.image,
    Icons.camera_alt,
    Icons.add_alert,
    Icons.view_column,
    Icons.grid_on ];

  final screenName =[
    TextViewScreen(),
    ButtonScreen(),
    CheckBoxScreen(),
    CardView(),
    DatePickerScreen(),
    GoogleMapActivity(),
    SeekbarandRating(),


    ];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(

      itemCount: data == null ? 0 :data.length,
        separatorBuilder: (context,index)=> Divider(),
    itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading:CircleAvatar(
            child: new Icon(icons[index],color: Colors.greenAccent,),//showing front of the line,
          ) ,
          title: Text(data[index],
          ),
          onTap: (){
            print(index);
          //  screenName[index];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screenName[index],
              ),
            );
          },
        );

    },
    );
  }
}
