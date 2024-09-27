import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/Drawer.dart';

class HomePage extends StatelessWidget{
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
        title: const Text("PORTFOLIO",style: TextStyle(
            color: Colors.white
        ),),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.github),color: Colors.white,),
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.linkedin),color: Colors.white,),
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.facebook),color: Colors.white,),
        ],
      ),
      body: const Center(
        child: Text("Welcome DSI32"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Button pressed");
        }
        ,child: Icon(Icons.save),),
      drawer: MyDrower(),
    );
  }

}