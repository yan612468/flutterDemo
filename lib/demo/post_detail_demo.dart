import 'package:flutter/material.dart';
import 'package:learn_flutter/model/Post.dart';

class PostShowDetailDemo extends StatelessWidget {
  final Post post;

  PostShowDetailDemo({@required this.post});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network('${post.imageUrl}'),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}',style: Theme.of(context).textTheme.title,),
                Text('${post.author}',style: Theme.of(context).textTheme.subhead,),
                SizedBox(height: 32.0,),
                Text('${post.description}',style: Theme.of(context).textTheme.body1,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
