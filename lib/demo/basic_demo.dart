import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.deepPurple[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547113930829&di=2ab41084cf7e549b1866a44fccb8f0cb&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F1f178a82b9014a9045b434baa3773912b31bee2b.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(
            Colors.green[400].withOpacity(0.7),
                BlendMode.hardLight),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.deepPurple[400],),
//            color: Colors.blue,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(16.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              border: Border.all(
                color: Colors.black,
                width: 3.0,
                style:BorderStyle.solid,
              ),
//              borderRadius: BorderRadius.all(
//                Radius.circular(10.0),
//              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(16.0, 16.0),
                  color: Colors.grey[600],
                  blurRadius: 10.0,
                  spreadRadius: -2.0
                ),
              ],
              shape: BoxShape.circle,
//              gradient:RadialGradient(colors: [
//                Color.fromRGBO(142, 236, 52, 1.0),
//                Color.fromRGBO(20, 64, 78, 3.0),
//              ]),
              gradient:LinearGradient(colors: [
                Color.fromRGBO(142, 236, 52, 1.0),
                Color.fromRGBO(20, 64, 78, 3.0),
              ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
      fontSize: 16.0
  );

  final String _author = '李白';
  final String _title = '将进酒';


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《$_author》---- $_title。君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: '123',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '456',
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.blue,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}