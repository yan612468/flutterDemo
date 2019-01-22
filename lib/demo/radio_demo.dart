import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioValue = 0;

  void _radioValueChanged(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('currentRadio  $_radioValue'),
            RadioListTile(
              value: 0,
              groupValue: _radioValue,
              onChanged: _radioValueChanged,
              title: Text('RadioGroup A'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioValue == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioValue,
              onChanged: _radioValueChanged,
              title: Text('RadioGroup B'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_2),
              selected: _radioValue == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Radio(
//                    value: 0,
//                    groupValue: _radioValue,
//                    onChanged: _radioValueChanged,
//                  activeColor: Colors.brown,
//                ),
//                Radio(
//                  value: 1,
//                  groupValue: _radioValue,
//                  onChanged: _radioValueChanged,
//                  activeColor: Colors.brown,
//                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
