import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ninghao_flutter/model/post.dart';


class ViewDemo extends StatelessWidget {
  const ViewDemo({Key key}) : super(key: key);

  Widget _pageItemBuilder(BuildContext ctx, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
      ],
    );

  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}


class ViewDemo1 extends StatelessWidget {
  const ViewDemo1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping : true,
      scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            color: Colors.brown[900],
            alignment: Alignment(0,0),
            child: Text("One",style: TextStyle(fontSize: 32,color: Colors.white),),
          ),
          Container(
            color: Colors.grey[900],
            alignment: Alignment(0,0),
            child: Text("Two",style: TextStyle(fontSize: 32,color: Colors.white),),
          ),
          Container(
            color: Colors.brown[900],
            alignment: Alignment(0,0),
            child: Text("Three",style: TextStyle(fontSize: 32,color: Colors.white),),
          ),
        ],
      );
  }
}