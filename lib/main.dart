import 'package:flutter/material.dart';

import 'demo/BasicDemo.dart';
import 'demo/bottom_navigation_bar.dart';
import 'demo/drawDemo.dart';
import 'demo/layoutDemo.dart';
import 'demo/listView_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/viewDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(100, 100, 100, 0.5),
        splashColor: Colors.white70,
      ),
      // home: Home(),
      // home: NavigatorDemo(),
      initialRoute: '/',
      routes: {
        '/':(context) => Home(),
        '/about':(context) => Page(title: "About",),
        
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            '俱信协作社111',
          ),
          centerTitle: true,
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'native',
//            onPressed: null,
//          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'more',
              onPressed: null,
            ),
          ],
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(
                  icon: Icon(Icons.view_quilt),
                ),
              ]),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            SliverDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
