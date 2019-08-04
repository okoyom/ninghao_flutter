import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "username",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("EMAIL.COM"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564751303284&di=5fa691adec452dacf9c0a983df77142e&imgtype=0&src=http%3A%2F%2Fm.360buyimg.com%2Fpop%2Fjfs%2Ft23434%2F230%2F1763906670%2F10667%2F55866a07%2F5b697898N78cd1466.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564751874481&di=1995750a0c3bde0d2a354da81ee4cf1c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201502%2F03%2F20150203144925_nrBV4.jpeg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.yellow[400],
                    BlendMode.hardLight,
                  )),
            ),
          ),
          ListTile(
            title: Text(
              "MEssages",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.yellow,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "BBBBBBB",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.yellow,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "CCCCCCCC",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.tag_faces,
              color: Colors.yellow,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
