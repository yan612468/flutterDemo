import 'package:flutter/material.dart';

class PopMenuDemo extends StatefulWidget {
  @override
  _PopMenuDemoState createState() => _PopMenuDemoState();
}

class _PopMenuDemoState extends State<PopMenuDemo> {
  String _currentItemValue = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopmenuDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PopupMenuButton(
                  child: Text(_currentItemValue),
                  onSelected: (value) {
                    debugPrint(value);
                    setState(() {
                      _currentItemValue = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                        value: 'home',
                        child: Text('Home')
                    ),
                    PopupMenuItem(
                        value: 'discover',
                        child: Text('discover')
                    ),
                    PopupMenuItem(
                        value: 'mine',
                        child: Text('mine')
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
