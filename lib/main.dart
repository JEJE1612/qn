import 'package:flutter/material.dart';
import 'package:qn/create_post_containers.dart';
import 'package:qn/data/data.dart';
import 'package:qn/models/post_model.dart';
import 'package:qn/models/user_model.dart';

import 'post_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Qn(),
    );
  }
}

class Qn extends StatefulWidget {
  const Qn({super.key});

  @override
  State<Qn> createState() => _QnState();
}

class _QnState extends State<Qn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
backgroundColor: Color.fromARGB(255, 214, 214, 214),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Center(
              child: Text("Frac",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 17, 114, 67))))
          // ignore: prefer_const_literals_to_create_immutables
          ,
          leading: Icon(Icons.menu, color: Color.fromARGB(255, 17, 114, 67)),
          actions: [
            Icon(Icons.search, color: Color.fromARGB(255, 17, 114, 67)),
            Icon(
              Icons.notifications_active,
              color: Color.fromARGB(255, 17, 114, 67),
            )
          ],
          backgroundColor: Colors.white,
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(),
        ),
        SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0, 5.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final Post post = posts[index];
                return SingleChildScrollView(
                    controller: ScrollController(),
                    child: PostContainer(
                      post: post,
                      key: null,
                    ));
              }),
            ))
      ],
    ));
  }
}
