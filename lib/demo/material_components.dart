import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:ninghao_flutter/demo/check_box_demo.dart';

import 'datetime_demo.dart';
import 'form_demo.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialComponents"),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
            ListItem(title: "FloatingActionButton",page:FloatingActionButtonDemo(),),
            ListItem(title: "ButtonDemo",page:ButtonDemo(),),
            ListItem(title: "form",page:FormDemo(),),
            ListItem(title: "checkbox",page:CheckBoxDemo(),),
            ListItem(title: "datetimedemo",page:DateTimeDemo(),),
        ],
      ),
    );
  }
}


class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Widget flatButtonDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  FlatButton(
                    child: Text("Button"),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
                  FlatButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("Button"),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
              ],
    );
    final Widget raisedButtonDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Row(
                      children: <Widget>[
                        RaisedButton(
                    child: Text("Button"),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                    elevation: 1,
                  ),
                  SizedBox(width: 20,),
                  RaisedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("Button"),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                    elevation: 16,
                    shape: StadiumBorder(),
                  ),
                      ],
                    ),
              ],
    );
    final Widget outlineButton = Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Row(
                      children: <Widget>[
                  prefix0.OutlineButton(
                    child: Text("Button"),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                    borderSide: BorderSide(
                      color: Colors.blue
                    ),
                  ),
                  SizedBox(width: 20,),
                  prefix0.OutlineButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("Button"),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                    shape: StadiumBorder(),
                  ),
                      ],
                    ),
              ],
    );
 String _data = 'hhh';

    final Widget popupMenuBoutton = Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Row(
                      children: <Widget>[
                        Text(_data),
                        PopupMenuButton(
                          onSelected: (v){
                            debugPrint("----$v------");
                            
                          },
                          itemBuilder: (BuildContext contex)=>[
                            PopupMenuItem(
                              value: 'HOME',
                              child: Text('home'),
                            ),
                            PopupMenuItem(
                              value: 'Discover',
                              child: Text('Discover'),
                            ),
                            PopupMenuItem(
                              value: 'me',
                              child: Text('me'),
                            ),
                          ],
                        )
                      ],
                    ),
              ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButton,
            popupMenuBoutton,
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
        title: Text("WidgetDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }
}


class FloatingActionButtonDemo extends StatelessWidget {
  final String title;
  FloatingActionButtonDemo({this.title});

  @override
  Widget build(BuildContext context) {

    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      elevation: 0,
      // backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30)
      // ),
    );
    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text("Add"),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
      
      // floatingActionButton: _floatingActionButtonExtended,
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title,this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page)
        );
      },
    );
  }
}