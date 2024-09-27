import 'package:flutter/material.dart';
import 'package:tpone/pages/AboutPage.dart';

import '../pages/HomePage.dart';
import '../pages/ProjectsPage.dart';
class MyDrower extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fnbe1-2.fna.fbcdn.net/v/t39.30808-6/417431492_1444335239840146_8846456813454154227_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=l269y6gvGmwQ7kNvgEbRNrf&_nc_ht=scontent.fnbe1-2.fna&_nc_gid=AlyGZoQJe_oWeoMynHB--C1&oh=00_AYCUbKBWOOSEL0YLpEx36EC7Nh5B7I0DJ8XFqocWfTti5Q&oe=66FCF2A7'),
            ),
            accountEmail: Text('wajihsayes@gmail.com'),
            accountName: Text(
              'Essayed Mohamed Wajih',
              style: TextStyle(fontSize: 24.0),
            ),
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.house),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(
              'About',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text(
              'Projects',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectsPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_emergency),
            title: const Text(
              'Contact',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
        ],
      ),
    );
  }

}
