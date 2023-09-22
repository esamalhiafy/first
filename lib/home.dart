import 'package:flutter/material.dart';
import 'package:flutter_application_2/appar.dart';
import 'package:flutter_application_2/drawr.dart';


  Text con = new Text(
    "Container",
    style: TextStyle(color: Colors.white, fontSize: 25),
  );
class esan extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

           appBar: myapp(),
            drawer: mydrwar(),
            body: Column(
              children: [
                Container(
                  width: 2000,
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "I am container",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  alignment: Alignment.center,
                ),
                Container(
                  color: Colors.blue,
                  width: 2000,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Hi I am Slanting',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  transform: new Matrix4.skewY(0.2),
                ),
                Container(
                  color: Colors.blue,
                  width: 2000,
                  height: 85,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Text(
                    ' I am also Slanting,but see my edges ',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  transform: new Matrix4.skewY(0.2),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  margin: EdgeInsets.all(60),
                  alignment: Alignment.center,
                  child: Center(
                    child: Container(
                      width: 75,
                      height: 75,
                      color: Color.fromARGB(255, 235, 248, 53),
                      alignment: Alignment.center,
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Color.fromARGB(255, 104, 170, 60),
                        alignment: Alignment.center,
                        child: Container(
                          width: 20,
                          height: 20,
                          color: Color.fromARGB(255, 212, 87, 48),
                          alignment: Alignment.center,
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Color.fromARGB(255, 91, 60, 179),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )


            ));}}
    //  )
    // ))

