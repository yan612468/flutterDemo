import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _swithValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _swithValue,
              onChanged: (value) {
                setState(() {
                  _swithValue = value;
                });
              },
              title: Text('switch item A'),
              subtitle: Text('description'),
              secondary: Icon(_swithValue ? Icons.visibility : Icons.visibility_off),
              selected: _swithValue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Text(_swithValue ? '😊' : '😂',
//                  style: TextStyle(fontSize: 32.0),
//                ),
//                Switch(
//                    activeColor: Colors.red,
//                    value: _swithValue,
//                    onChanged: (value) {
//                      setState(() {
//                        _swithValue = value;
//                      });
//                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
