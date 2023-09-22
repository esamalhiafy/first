import 'package:flutter/material.dart';
import 'package:flutter_application_2/cal.dart';
import 'package:flutter_application_2/cv.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/list.dart';
import 'package:flutter_application_2/time.dart';

import 'package:flutter_application_2/splish.dart';

class mydrwar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Drawer(
      backgroundColor: Colors.cyan,
      width: MediaQuery.of(context).size.width / 2 + 30,
      child: ListView(
        children: [
          Container(
            color: Colors.black,
            height: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 55.0,
                      backgroundImage: AssetImage("images/es.jpg")),
                  Text("مطعم الدار",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.indigo,
            thickness: 6,
          ),
          ListTile(
            hoverColor: Colors.cyan,
            tileColor: Colors.blue,
            title: Text("HOME"),
            leading: Icon(Icons.home),
            onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return splashscreen();
            })),
          ),
          Divider(
            color: Colors.indigo,
            thickness: 6,
          ),
          ListTile(
            hoverColor: Colors.cyan,
            tileColor: Colors.blue,
            title: Text("bod"),
            leading: Icon(Icons.add_alert),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => bod(),
            )),
          ),
          Divider(
            color: Colors.indigo,
            thickness: 6,
          ),
          ListTile(
            hoverColor: Colors.cyan,
            tileColor: Colors.blue,
            title: Text("List"),
            leading: Icon(Icons.list),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Listt(),
            )),
          ),
          Divider(
            color: Colors.indigo,
            thickness: 6,
          ),
          ListTile(
            hoverColor: Colors.cyan,
            tileColor: Colors.blue,
            title: Text("Calculator"),
            leading: Icon(Icons.calculate),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Calculator(),
            )),
          ),
          Divider(
            color: Colors.indigo,
            thickness: 6,
          ),
          ListTile(
            hoverColor: Colors.cyan,
            tileColor: Colors.blue,
            title: Text('Time'),
            leading: Icon(Icons.access_time_filled),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Timer())),
          ),
          Divider(
            color: Colors.indigo,
            thickness: 6,
          ),
          ListTile(
            hoverColor: Colors.cyan,
            tileColor: Colors.blue,
            title: Text('exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => Navigator.pop(context),
          ),
          Divider(
            color: Colors.indigo,
            thickness: 6,
          ),
          // ListTile buldl(c,s,ob){
          // return ListTile(
          //   tileColor: Colors.red,
          //   leading: ob,
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   selectedTileColor: Colors.white,
          //   onTap: (){
          //     if (s=="خروج") {
          //       Navigation.pop
          //     }
          //   }
          // )
          // }
        ],
      ),
    );
  }
}
