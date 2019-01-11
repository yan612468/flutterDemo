import 'package:flutter/material.dart';
import 'package:learn_flutter/model/Post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuidlerDemo();
  }
}

class GridViewBuidlerDemo extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: posts.length,
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 3,
//          crossAxisSpacing: 8.0,
//          mainAxisSpacing: 8.0,
//        ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0 ,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
        itemBuilder: _itemBuilder,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
     return Container(
       child: Image(image: NetworkImage(posts[index].imageUrl),
       fit: BoxFit.cover,),
     );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 130.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
//      scrollDirection: Axis.horizontal,
      children: _buildItems(100),
    );
  }

  List<Widget> _buildItems(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[400],
        alignment: Alignment(0.0, 0.0),
        child: Text('item $index',
          style: TextStyle(fontSize: 16.0, color: Colors.red),),
      );
    });
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
//      scrollDirection: Axis.horizontal,
      children: _buildItems(100),
    );
  }

  List<Widget> _buildItems(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[400],
        alignment: Alignment(0.0, 0.0),
        child: Text('item $index',
          style: TextStyle(fontSize: 16.0, color: Colors.red),),
      );
    });
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: posts.length,
      itemBuilder: _itemPageBuilder,
    );
  }

  Widget _itemPageBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                ),
              ),
              Text(
                posts[index].author,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  PageView(
//      pageSnapping: false,
//      reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (pageSize) => debugPrint('currentPageSize+$pageSize'),
      controller: PageController(
        initialPage: 0,
        keepPage: false,
        viewportFraction: 0.7,
      ),
      children: <Widget>[
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.brown[400],
          child: Text(
            'ONE',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.green[400],
          child: Text(
            'TWO',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.yellow[400],
          child: Text(
            'THREE',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}