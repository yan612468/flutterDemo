import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 200.0,
                maxHeight: 200.0,
              ),
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  AspectRatio(
      aspectRatio: 5/3,
      child: Container(
        color: Colors.deepOrange,
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Colors.green[300],
    );
  }
}

class StackDemo extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 200,
          child: Container(
            alignment: Alignment(0.3, 0.2),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              shape: BoxShape.rectangle,
              gradient: RadialGradient(colors: [
                Colors.deepPurple,
                Colors.blue,
              ]),
//                      borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(Icons.pool,color: Colors.white,size: 32.0,),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        IconBadge(Icons.pool),
        Positioned(
          left: 50.0,
          top: 10.0,
          child: Icon(Icons.beach_access,size: 10.0,color: Colors.white,),
        ),
        Positioned(
          right: 50.0,
          bottom: 10.0,
          child: Icon(Icons.favorite,size: 10.0,color: Colors.white,),
        ),
//            IconBadge(Icons.beach_access),
//            IconBadge(Icons.airplanemode_active),
      ],
    );
  }
}