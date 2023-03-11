import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qn/models/question.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({
    required key,
  }) : super(key: key);

  get chlidern => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Q&N',
            style: TextStyle(
              color: const Color.fromARGB(255, 17, 114, 67),
              fontSize: 30,
            ),
          )),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 3.0),
              padding: EdgeInsets.symmetric(vertical: 3.0),
              color: Colors.grey,
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 120,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [ 
                    
                    Text(
                    'Question?',
                    style: TextStyle(fontSize: 25),
                  ),
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
          
        )
                  
                  ],),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 90,
                    width: double.infinity,
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          'answer1............................... .',
                          style: TextStyle(fontSize: 25),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(
                              Icons.north,
                              color: Colors.black,
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.south,
                              color: Colors.red,
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child:  Column(
                      children: [
                        Center(
                            child: Text(
                          'answer2............................... .',
                          style: TextStyle(fontSize: 25),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(
                              Icons.north,
                              color: Colors.black,
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.south,
                              color: Colors.red,
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child:  Column(
                      children: [
                        Center(
                            child: Text(
                          'answer3............................... .',
                          style: TextStyle(fontSize: 25),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(
                              Icons.north,
                              color: Colors.black,
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.south,
                              color: Colors.red,
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    ) ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child:  Column(
                      children: [
                        Center(
                            child: Text(
                          'answer4............................... .',
                          style: TextStyle(fontSize: 25),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(
                              Icons.north,
                              color: Colors.black,
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.south,
                              color: Colors.red,
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Column(
                      children: [
                        Center(
                            child: Text(
                          'answer5............................... .',
                          style: TextStyle(fontSize: 25),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(
                              Icons.north,
                              color: Colors.black,
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.south,
                              color: Colors.red,
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Column(
                      children: [
                        Center(
                            child: Text(
                          'answer6............................... .',
                          style: TextStyle(fontSize: 25),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(
                              Icons.north,
                              color: Colors.black,
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.south,
                              color: Colors.red,
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Column(
                      children: [
                        Center(
                            child: Text(
                          'answer7............................... .',
                          style: TextStyle(fontSize: 25),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(
                              Icons.north,
                              color: Colors.black,
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.south,
                              color: Colors.red,
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    ))
              ])),
        ));
  }
}
