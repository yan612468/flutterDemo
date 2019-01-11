import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'yanhan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('yanhan@trusfort.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546972276985&di=bad89ac3ffd39fec7dd665218147fbb1&imgtype=0&src=http%3A%2F%2Fpic20.photophoto.cn%2F20110823%2F0005018324223462_b.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.blue[400],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546972464129&di=cafe57b6e645aa621d970e0d4471fd90&imgtype=0&src=http%3A%2F%2Fpic2.16pic.com%2F00%2F15%2F82%2F16pic_1582804_b.jpg'
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue[400].withOpacity(0.6),
                        BlendMode.hardLight
                    )
                )
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing:
            Icon(Icons.message, color: Colors.redAccent, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing:
            Icon(Icons.favorite, color: Colors.redAccent, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing:
            Icon(Icons.settings, color: Colors.redAccent, size: 22.0),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}