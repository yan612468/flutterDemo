import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationState();
  }
}

class BottomNavigationState extends State<BottomNavigationDemo> {
  var _currentIndex = 0;

  void _onTapHandler(int value) {
    setState(() {
      _currentIndex = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore),title: Text('explore')),
          BottomNavigationBarItem(icon: Icon(Icons.history),title: Text('history')),
          BottomNavigationBarItem(icon: Icon(Icons.list),title: Text('list')),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('person')),
        ]);
  }
}
