import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[500],
          title: const Text("Intro Card"),
          centerTitle: true,

        ),
        body: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 6),
                  blurRadius: 15,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //For Phone number
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.phone,size: 16, color: Colors.teal,),
                      Text("+91 8980******",
                      style: TextStyle(fontSize: 12,color: Colors.black87)
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    //for Profile picture
                    Padding(
                      padding: const EdgeInsets.all(5),
                      //profile image
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/avatar.jpg"),
                      ),
                    ),
                    //profile information
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5,top: 8),
                          child: Row(
                            children: [
                              Text("Jadav Vansh",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800
                              , color: Colors.black87),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,top: 6),
                          child: Row(
                            children: [
                              Text("Flutter Developer",
                              style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500,
                              color: Colors.teal),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:4,top: 8 ,bottom: 5),
                          child: Row(
                            children: [
                              Text('"Flutter is fun and powerful!"',style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic,
                              color: Colors.black87),)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],

                ),
                //horizontal line
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 5),
                  child: Row(
                    children: [
                      Container(height: 1, width: 260, color: Colors.black),
                    ],

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //web site link
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Icon(Icons.web, size: 20,color: Colors.teal,),
                          Text(
                            "www.jadaveng.com",
                            style: TextStyle(fontSize: 12,color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      //E-mail address
                      padding: const EdgeInsets.only(left: 4,top: 4),
                      child: Column(
                        children: [
                          Icon(Icons.mail, size: 20,color: Colors.teal,),
                          Text(
                            "vanshjadav00@gmail.com",
                            style: TextStyle(fontSize: 12,color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
