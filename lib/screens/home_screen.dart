// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9D3FF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFC9D3FF),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back, size: 30, color: Color(0xFF6984FC),),
                Icon(Icons.more_horiz, size: 30, color: Color(0xFF6984FC),)
              ],
            ),
          ),

          SizedBox(height: 25,),

          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              image: DecorationImage(
                image: AssetImage("assets/images/img.jpeg")
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Stephanie Milton",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(5),
            height: 40,
            width: 100,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Favorite",
                style: TextStyle(fontSize: 17),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color(0xFF6984FC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))
                )
              ),
            ),
          ),

          SizedBox(height: 25,),

          Expanded(
            child: Card(
              elevation: 10,
              shadowColor: Color.fromARGB(255, 211, 24, 24),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
              margin: EdgeInsets.zero,

              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 30,
                ),

                child: ListView(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(13))
                        ),
                        child: Icon(Icons.chat, color: Colors.orange,),
                      ),

                      title: Text(
                        "Start a chat",
                        style: TextStyle(
                          fontSize: 19
                        ),
                      ),

                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),

                
              ),

            ),
          )

          
        ],
      ),
    );
  }
}