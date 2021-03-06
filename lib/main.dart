import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigation_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(),
//      home: NavigationDemo(),
      initialRoute: '/mdc',
      routes: {
        '/' : (context) => Home(),
        '/About': (context) => Page(title: 'About',),
        '/Forms' : (context) => FormDemo(),
        '/mdc' : (context) => MaterialComponetDemo(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Colors.yellow[400],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
//            leading: IconButton(
//                icon: Icon(Icons.menu),
//                tooltip: 'navigation button',
//                onPressed: () => debugPrint('navigation button is pressed')),
            title: Text('AppBar'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'search button',
                  onPressed: () => debugPrint('search button is pressed'))
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black26,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              SliverDemo(),
//              LayoutDemo(),
              ViewDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationDemo(),
        ));
  }
}
