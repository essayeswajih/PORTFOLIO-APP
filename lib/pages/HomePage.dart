import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../widgets/Drawer.dart';
import '../widgets/Post.dart';
import 'LoginPage.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text("ME",style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.github),color: Colors.white,),
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.linkedin),color: Colors.white,),
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.facebook),color: Colors.white,),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Post(profileImage: "assets/images/mme.jpg", name: "Essayes Wajih", postImage: "assets/images/mme.jpg",postText: "Like it ❤",),
              Post(profileImage: "assets/images/salma.jpg", name: "Salma El Arbi", postImage: "",postText: "Its wajih's Love ❤",),
              Post(profileImage: "assets/images/me.png",name: "Baccar Adem", postImage: "assets/images/me.png",postText: "Hello",),
              Post(profileImage: "assets/images/me.png",name: "Amor Hamdi", postImage: "assets/images/me.png",postText: "Hello",),
            ],
          ),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        }
        ,child: FaIcon(FontAwesomeIcons.google),),*/
      drawer: MyDrower(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

}
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 0,
      items: <Widget>[
        Icon(Icons.add, size: 30,color: Colors.white,),
        Icon(Icons.list, size: 30,color: Colors.white),
        Icon(Icons.compare_arrows, size: 30,color: Colors.white),
        Icon(Icons.call_split, size: 30,color: Colors.white),
        Icon(Icons.perm_identity, size: 30,color: Colors.white),
      ],
      height: 50,
      color: Colors.black87,
      buttonBackgroundColor: Colors.black87,
      backgroundColor: Colors.white,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
      letIndexChange: (index) => true,
    );
  }
}