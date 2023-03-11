import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qn/secondroute.dart';
import 'package:qn/data/data.dart';
import 'package:qn/models/user_model.dart';

import 'models/post_model.dart';
import 'profile_avatar.dart';

class PostContainer extends StatelessWidget {
  final Post post;
   
   const PostContainer({
    required key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.symmetric(vertical: 5.0),
      color: Colors.white,
      child: Column(
        
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _PostHeader(
                      post: post,
                      key: null,
                    ),
                    const SizedBox(height: 4.0),
                    // ignore: unnecessary_new
                     new InkWell(
              child:
                    Text(post.caption, style: TextStyle(fontSize:20),),
                    onTap: () =>  Navigator.push(             
              context,
              
              MaterialPageRoute(builder: (context) => const SecondRoute(key: null,)),
            ))
                         
                    ,Text(post.answer),
                    
                    post.imageUrl != ''
                        ? SizedBox.shrink()
                        : SizedBox(height: 6.0)
                  ])),
          post.imageUrl != ''
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.network(post.imageUrl),
                )
              : const SizedBox.shrink(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: _PostStatut(
              post: post,
              key: null,
            ),
          )
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({required key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          imageUrl: post.user.imageUrl,
          key: null,
        ),
        SizedBox(width: 8.0),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
              
              post.user.name,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              
              post.time,
              style: TextStyle(color: Colors.black),
            ),
             
            
          ],
          
        )),
        Align(
              alignment: Alignment.centerRight,
              child:IconButton(onPressed:(() => print('more')),icon: Icon(
                Icons.more_horiz,
              ))
            )
      ],
    );
  }
}

class _PostStatut extends StatelessWidget {
  final Post post;

  const _PostStatut({required key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30),
        Icon(
          Icons.north,
          color: Colors.black,
        ),
        Text(post.likes),
        SizedBox(width: 90),
        Icon(
          Icons.south,
          color: Colors.red,
        ),
        Text(post.shares),
        SizedBox(width: 70),
        // ignore: prefer_const_constructors
        IconButton
        (
         icon:Icon( Icons.comment_bank),
          color: Color.fromARGB(255, 17, 114, 67), onPressed: () {           showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.all(25),
                  color: Color.fromARGB(156, 255, 255, 255),
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        
                        maxLength: 150,
                        decoration: InputDecoration(labelText: "New answer"),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      TextButton(
                          onPressed: () {
                           
                            Navigator.pop(context);
                          },
                          child: Text("ADD", style: TextStyle(fontSize: 20)))
                    ],
                  ),
                  height: double.infinity,
                );
              },
              isScrollControlled: true); },
          
        ),
        SizedBox(width: 30)
      ],
    );
  }
}
