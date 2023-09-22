import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/drawr.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/main.dart';

class splashscreen extends StatefulWidget {
  static const id = 'splash';


  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
    initState() {
    super.initState();

    Timer(const Duration(seconds: 2), (){



     Navigator.of(context).push(MaterialPageRoute(builder: (_) {
   return esan();
     }));

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child:  Image.asset("images/dar.jpeg",
            width: 200,
            height: 150,),

          ),
          SizedBox(
            height: 10.0,

          ),
          Text(
            "مطعم الدار",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),
          ),
          SizedBox(
            height: 10,

          ),
          CircularProgressIndicator(
            color: Colors.cyan,
           backgroundColor: Colors.red,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

