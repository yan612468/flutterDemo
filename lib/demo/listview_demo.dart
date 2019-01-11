import 'package:flutter/material.dart';
import 'package:learn_flutter/model/Post.dart';

class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.grey[400],
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          Text(
            posts[index].description,
            style: Theme.of(context).textTheme.body1,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}