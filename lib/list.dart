import 'package:flutter/material.dart';
import 'package:flutter_application_2/drawr.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/appar.dart';
class Listt extends StatefulWidget {
  const Listt({super.key});

  @override
  State<Listt> createState() => _listState();
}

// ignore: camel_case_types
class _listState extends State<Listt> {
  List<String> l=["rdyhdy"];
  @override
  Widget build(BuildContext context) {
    TextEditingController con =TextEditingController();
    int ind=0;

    return MaterialApp(
      home:
      Scaffold(
        appBar:myapp() ,
        drawer: mydrwar(),

        body: Column(
          children: [

            Container(
              margin: EdgeInsets.all(10),
              child: TextField(

                maxLines: 1,

                // onChanged: (value) {
                //   setState(() {
                //     l.add(value);
                //   });
                //},
              //  onEditingComplete: () {
                //    setState(() {
                  //    l.add(con.text);
                 //
                //   });

                //},
        //         onTapOutside: (event) {
        // setState(() {
        //     l.add(con.text);
        //    });
        //         },
                onSubmitted: (value) {
                    setState(() {
                      l.add(value);
                    });
                },




              controller: con,

              decoration: InputDecoration(
                prefixIcon: IconButton(onPressed: () {
        setState(() {
        l.add(con.text);
        });

        }, icon:Icon( Icons.add_circle)),
        // icon: IconButton.outlined(onPressed: (){r.text=r.text.substring(0,r.text.length-1); }, icon:Icon(Icons.backspace_outlined) ),
        //         icon: IconButton(onPressed: () {
        //           setState(() {
        //             l.add(con.text);
        //           });
        //
        //         }, icon:Icon( Icons.add_circle)),

        //   IconButton(Icons.backspace_outlined,
        // color: Colors.red,),

        fillColor:Colors.white54,
        border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(30),

        ),

        ),

        )),


           Expanded(
             child: Container(
               child: ListView.builder(
                 itemCount: l.length,
                 itemBuilder: (BuildContext ctx,int i){
                   return
                         Card(

                           elevation: 50,

                           child:ListTile(

                           title: Text(l[i],
                           textAlign: TextAlign.center,
                           ),
                           onTap: () {

                             setState(() {
                               ind=i;
                               l.removeAt(ind);

                             });
                           },
                             //selected: EditableText.debugDeterministicCursor,



                           ),


                           borderOnForeground: true,
                           shadowColor: Colors.green,
                           //elevation: 50,
                           color: Colors.blue,
                           margin: EdgeInsets.all(5),



                           // child: ListTile(
                           //   onTap: (){
                           //     ind=i;
                           //   },
                           //   leading: IconButton(
                           //     icon: Icon(Icons.update),
                           //     onPressed: () {
                           //       setState(() {
                           //         l[i]=con.text;
                           //       });
                           //     },
                           //   ),
                           //
                           //     // title: Text(l[i],
                           //     // textAlign: TextAlign.center,),
                           //
                           //
                           //
                           // ),

                         );




                 }
               ),
             ),
           )


          ],
        ),
      ),
    );

  }
}
