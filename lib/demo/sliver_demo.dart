import 'package:flutter/material.dart';
import 'package:learn_flutter/model/Post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
//              centerTitle: true,
//              title: Text('SliverTitle'),
//              pinned: true,
              floating: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('FlexTitle'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 3.0
                  ),
                ),
                background: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547801810&di=f86baed3563b4f24f0eec8f01eaae211&imgtype=jpg&er=1&src=http%3A%2F%2Fimg1.gtimg.com%2F6%2F642%2F64276%2F6427645_980x1200_0.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverSafeArea(
              sliver:   SliverPadding(
                padding: EdgeInsets.all(8.0),
//                sliver: SliverListDemo(),
                sliver: SliverGridDemo(),
              ),
            ),
          ],
        ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context , int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 32.0,
                    top: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(posts[index].title,
                          style: TextStyle(color: Colors.white,
                          fontSize: 32.0),
                        ),
                        Text(posts[index].author,
                          style: TextStyle(color: Colors.white,
                              fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context , int index) {
          return Container(
            child: Image.network(posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}