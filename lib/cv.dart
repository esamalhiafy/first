import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/appar.dart';
import 'package:flutter_application_2/drawr.dart';
class bod extends StatelessWidget {
  const bod({super.key});

  @override
  Widget build(BuildContext context) {
    Text mat = new Text("Material App");
    Text mat1 = new Text(
      " MaterialApp",
      style: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
    );
    Text mat2 = new Text(
      " A covenience widget that wraps a number of\n    widgets that are commonly required for \napplications implementing material design.",
      style: TextStyle(fontSize: 20),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: myapp(),
          drawer: mydrwar(),
          body: Container(
            width: 2000,
            height: 1500,
            color: Color.fromARGB(255, 77, 200, 238),
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        width: 2000,
                        padding: EdgeInsets.only(top: 60),
                        height: 100,
                        color: Colors.blue,
                        child: mat1),
                    Container(
                      color: Color.fromARGB(255, 77, 200, 238),
                      width: 500,
                      height: 100,
                      margin: EdgeInsets.only(top: 200),
                      child: mat2,
                      alignment: Alignment.center,
                    ),
                  ],
                )),
          ),
        ));
  }
}
