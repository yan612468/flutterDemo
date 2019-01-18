import 'package:flutter/material.dart';
import 'package:learn_flutter/demo/pop_menu_demo.dart';

class MaterialComponetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'popmenuDemo',
            page: PopMenuDemo(),
          )
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('button'),
          onPressed: () {},
          splashColor: Colors.red,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          splashColor: Colors.red,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outLineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text('button'),
          onPressed: () {},
          splashColor: Colors.red,
          textColor: Theme.of(context).accentColor,
          borderSide: BorderSide(color: Colors.red, width: 5.0),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          splashColor: Colors.red,
          //按下的背景色
          highlightedBorderColor: Colors.grey,
          //按下时候边框颜色
          textColor: Theme.of(context).accentColor,
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('button'),
          onPressed: () {},
          splashColor: Colors.red,
          color: Theme.of(context).accentColor,
          textColor: Colors.white,
          elevation: 0.0,
        ),
        SizedBox(
          width: 16.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              shape: BeveledRectangleBorder(),
            ),
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text('button2'),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          color: Theme.of(context).accentColor,
          splashColor: Colors.red,
          textColor: Colors.white,
          elevation: 12.0,
        ),
      ],
    );

    final Widget fixWidthButton = Container(
      width: 160.0,
      child: Theme(
          data: ThemeData(),
          child: RaisedButton(
            onPressed: () {},
            child: Text('fixWidhtButton'),
            elevation: 0.0,
            color: Colors.deepPurple,
            textColor: Colors.white,
          )),
    );

    final Widget buttonBarDemo = Container(
        child: Theme(
      data: ThemeData(
        buttonTheme: ButtonThemeData(
          padding: EdgeInsets.symmetric(horizontal: 20.0)
        ),
      ),
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlineButton(
            onPressed: () {},
            child: Text('button1'),
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
          OutlineButton(
            onPressed: () {},
            child: Text('button1'),
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          )
        ],
      ),
    ));

    final Widget expandedButton = Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: OutlineButton(
              onPressed: () {},
              child: Text('button1'),
              textColor: Colors.red,
              borderSide: BorderSide(color: Colors.red, width: 1.0),
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            flex: 3,
            child: OutlineButton(
              onPressed: () {},
              child: Text('button1'),
              textColor: Colors.black87,
              borderSide: BorderSide(color: Colors.black87, width: 1.0),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outLineButtonDemo,
            fixWidthButton,
            expandedButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(
      Icons.add,
      color: Colors.white,
    ),
    elevation: 0.0,
    backgroundColor: Colors.black87,
//      shape: BeveledRectangleBorder(
//        borderRadius: BorderRadius.circular(32.0),
//      ),
  );

  final Widget _floatingActionButtonExtends = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('Add'),
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('floatActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
