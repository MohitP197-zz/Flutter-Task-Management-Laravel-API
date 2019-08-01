import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/projects/project_page.dart';
import 'package:taskmanagement/pages/staffs/staff_page.dart';
// import 'package:basicapp/home/home.dart';
// import 'package:basicapp/screen/locations/locations.dart';

class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textstyle = TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold);

    final style = TextStyle(
        color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold);

    final listStyle = TextStyle(
        color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal);

    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Mohit Paudel',
              style: textstyle,
            ),
            accountEmail: Text(
              'paudel823@gmail.com',
              style: style,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor:
                  Theme.of(context).platform == TargetPlatform.android
                      ? Colors.white
                      : Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark,
              color: Colors.black,
            ),
            title: Text(
              'Projects',
              style: listStyle,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProjectPage())),
          ),
          ListTile(
            leading: Icon(
              Icons.supervised_user_circle,
              color: Colors.black,
            ),
            title: Text(
              'Staffs',
              style: listStyle,
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => StaffPage())),
          ),
          Divider(color: Colors.black, height: 1.0),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: Icon(
              Icons.account_balance,
              color: Colors.black,
            ),
            title: Text(
              'About',
              style: listStyle,
            ),
            onTap: () {}
          ),
          ListTile(
            leading: Icon(
              Icons.build,
              color: Colors.black,
            ),
            title: Text(
              'Settings',
              style: listStyle,
            ),
            onTap: () {}
          ),
        ],
      ),
    );
  }
}
