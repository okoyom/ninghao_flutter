import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

class SliverDemo extends StatelessWidget {
  // const SliverDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("data"),
            floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("ZingHOO"),
              background: Image.network("http://b.hiphotos.baidu.com/image/pic/item/b2de9c82d158ccbf3559c2e817d8bc3eb035417e.jpg",fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(16),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1.6),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
              child:
                  Text(posts[index].title) //Image.network(posts[index].title),
              );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 14,
                shadowColor: Colors.grey.withOpacity(0.5),
                child: Container(
                  width: 300,
                  height: 150,
                  color: Colors.blue,
                  child: Text(
                    posts[index].title,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ));
        },
        childCount: posts.length,
      ),
    );
  }
}


