import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                    value: _sliderValue,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.deepPurple.withOpacity(0.3),
                    min: 0.0,
                    max: 10.0,
//                    divisions: 10,
                    label: '${_sliderValue.toInt()}',
                    ),
              ],
            ),
            Text('slidervalue is ${_sliderValue.toDouble()}'),
          ],
        ),
      ),
    );
  }
}
