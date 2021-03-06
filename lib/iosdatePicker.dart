import 'package:flutter/material.dart';

import 'package:flutter_cupertino_date_picker/date_picker_widget.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePickerinPageIOS extends StatefulWidget {
  @override
  _DatePickerinPageIOSState createState() => _DatePickerinPageIOSState();
}

class _DatePickerinPageIOSState extends State<DatePickerinPageIOS> {
//date picker in ios
  DateTime _currDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Picker In Page")),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              child: DatePickerWidget(
//                minDateTime: DateTime(2005),
//                maxDateTime: DateTime(2019),
//                initDateTime: DateTime(2018, 1, 1),
//                dateFormat: 'mm-dd-yyyy',
                onChanged2: (dateTime, selectedIndex) {
                  debugPrint(
                      '****** dataTime=$dateTime\nselectedIndex=$selectedIndex');
                  setState(() {
                    _currDateTime = dateTime;
                  });
                },
              ),
            ),

            // Selected date
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Selected Date:',
                    style: Theme.of(context).textTheme.subhead),
                Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    _currDateTime != null
                        ? '${_currDateTime.year}-${_currDateTime.month}-${_currDateTime.day}'
                        : '',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
