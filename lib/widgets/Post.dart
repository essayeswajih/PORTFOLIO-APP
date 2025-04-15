import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Post extends StatelessWidget {
  final String profileImage;
  final String name;
  final String postImage;
  final String postText;

  // Constructor for Post widget
  const Post({super.key,
    required this.profileImage,
    required this.name,
    required this.postImage,
    required this.postText,
  });

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
                            image: Image.asset(profileImage).image,
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(name,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
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
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if(postText.isNotEmpty)
                      Padding(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        child: Column(
                          children: [
                            Text(postText,style: TextStyle(color: Colors.black,fontSize: 18),),
                          ],
                        )
                      ),
                      if(postImage.isNotEmpty)
                      Image.asset(
                            postImage,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                    ],
                  )
                ],
              ),
            ),
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