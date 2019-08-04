import 'package:flutter/material.dart';
import 'package:ninghao_flutter/demo/page_show.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    var imgSrc =
        "http://g.hiphotos.baidu.com/image/pic/item/2e2eb9389b504fc2bbdd8ce9ebdde71191ef6d5f.jpg";

    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.network(imgSrc),
//        Image.asset(name)
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  posts[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  posts[index].author,
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 16.0,
                )
              ],
            ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                highlightColor: Colors.black38,
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>PageShow(post: posts[index],))
                  );
                },
              ),
            ),
          )  
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }
}
