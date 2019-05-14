import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'androidDatePicker.dart';
import 'app_bar.dart';
import 'iosdatePicker.dart';
import 'iosdatePicker2nd.dart';

class DatePickerScreen extends StatelessWidget {
  String _dateTime="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
      const ExampleAppBar(
      title: "Date Picker",
        showGoBack: true,
      ),

      Container(
        child: Text("Date Picker types",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,),),padding: EdgeInsets.all(10.0),),
      Center(
        child:  Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              new RaisedButton(color: Colors.tealAccent,
                child: new Text("IOS 1st",),
                onPressed:()=>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ios1st(),
                      ),
                    ),
              ),
              new RaisedButton(color: Colors.tealAccent,
                child:new Text("Android"),
                onPressed: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DateAndroid(),
                  ),
                ),
              ),
              new RaisedButton(color: Colors.tealAccent,
                child: new Text("IOS 2nd"),
                onPressed: ()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DatePickerinPageIOS(),
                  ),
                ),
              ),

               new TimePickerSpinner(
                 is24HourMode: false,
                 normalTextStyle: TextStyle(
                fontSize: 24,
                color: Colors.deepOrange
                  ),
                highlightedTextStyle: TextStyle(
                fontSize: 24,
                color: Colors.yellow
                  ),
                 spacing: 50,
                  itemHeight: 80,
                  isForce2Digits: true,
                  onTimeChange: (time) {
                _dateTime = time as String;
            },
          ),
            ],
          ),padding: EdgeInsets.all(10.0),
        ),
      ),
      ]
    ),




    );
  }
}







