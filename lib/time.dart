import 'package:flutter/material.dart';
import 'package:flutter_application_2/appar.dart';
import 'package:flutter_application_2/drawr.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    TimeOfDay timeOfDay = TimeOfDay.now();
    // ignore: prefer_const_constructors
    Text ti = Text(
      "  ${timeOfDay.hour}:${timeOfDay.minute}  AM \n current time",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: myapp(),
        drawer: mydrwar(),
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(children: [
                      Container(
                        child: ti,
                        margin: EdgeInsets.only(top: 50.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 120.0),
                        height: 490,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                      )
                    ]),
                    height: 720,
                    width: double.infinity,
                    color: Color.fromARGB(255, 71, 146, 196),
                  ),
                ],
              ),
            )),
      ),
    );

  }
}
