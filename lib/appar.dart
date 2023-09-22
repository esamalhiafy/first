import 'package:flutter/material.dart';
myapp (){
    return  AppBar(

          backgroundColor: Colors.blue,

     title: Text("Container"),
        titleTextStyle: TextStyle(color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: () { }, icon: Icon(Icons.info)),
         IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],



);
}
