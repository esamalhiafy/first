
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/list.dart';
import 'package:flutter_application_2/splish.dart';


void main() {

  TextEditingController r =TextEditingController();
  runApp(esan());
  
}
class myappp extends StatelessWidget {
  const myappp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(



        body: Listt(),


      ),
    );
  }
}








