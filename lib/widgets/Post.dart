import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Post extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('https://i.pravatar.cc/300'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Essayes Wajih',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_vert_outlined),
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: FaIcon(FontAwesomeIcons.trash,size: 18,),
                      color: Colors.black,
                    ),
                  ]
              )

            ],
          ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text('My post',style: TextStyle(color: Colors.black,fontSize: 18),)
                  ),
                  Image.asset(
                        'assets/images/logo.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){},
                icon: FaIcon(FontAwesomeIcons.heart,size: 18,),
                color: Colors.black,
              ),
              IconButton(
                onPressed: (){},
                icon: FaIcon(FontAwesomeIcons.comment,size: 18,),
                color: Colors.black,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.save,size: 18,),
                color: Colors.black,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.send,size: 18,),
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}