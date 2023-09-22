//import 'dart:html';


import 'package:flutter_application_2/appar.dart';
import 'package:flutter_application_2/drawr.dart';
import 'package:flutter_application_2/main.dart';

import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  String _res2="0";
  double num1 =0.0;
  double num2 =0.0;
  String op="0";
  TextEditingController n1 =TextEditingController();
  TextEditingController n2 =TextEditingController();
  TextEditingController r =TextEditingController();
  Widget build(BuildContext context) {




 void es(){
        String ope =r.text;



         String n="0";
         for(int i=0;i<r.text.length;i++)
           {
             if (ope[i].contains("+") | ope[i].contains("-") | ope[i].contains("/") | ope[i].contains("*") | ope[i].contains("%"))
               {
                 for(int j=i+1;j<(r.text.length);j++){

                 n+=ope[j];}
               }
           }
         num2=double.parse(n);

      }

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.cyan,

        body:


             Column(
               children: [
                 MyTextFild1("result",Colors.white54,"result",r),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                   children: [
                     butn("C", ()=> r.clear()),
                     butn("()",()=>  r.text=(int.parse(n1.text)+int.parse(n2.text)).toString()),
                     butn("%",()=>  r.text+="%"),
                     butn("/",(){
                       num1=double.parse(r.text);
                       r.text+="/".toString();
                       op="/";
                     }),


                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                   children: [

                     butn("7",()=> r.text+="7"),
                     butn("8",()=>  r.text+="8"),
                     butn("9",()=> r.text+="9"),
                     butn("+",(){
                       num1=double.parse(r.text);
                       r.text+="+".toString();
                      op="+";
                     }),

                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                   children: [
                     butn("4",()=>  r.text+="4"),
                     butn("5",()=>  r.text+="5"),
                     butn("6",()=>  r.text+="6"),
                     butn("-",(){
                       num1=double.parse(r.text);
                       r.text+="-".toString();
                       op="-";
                     }),
                   ]
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                   children: [

                     butn("1",()=>  r.text+="1"),
                     butn("2",()=> r.text+="2"),
                     butn("3",()=> r.text+="3"),
                     butn("*",(){
                       num1=double.parse(r.text);
                       r.text+="*".toString();
                       op="*";
                     }),

                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                   children: [

                     butn(".",()=>  r.text+="."),
                     butn("0",()=> r.text+="0"),
                     butn("00",()=> r.text+="00"),
                     butn("=",()
                     {
                       es();

                       if(op=="+") {
                         r.text=(num1+num2).toString();
                       } else if(op=="-") {
                         r.text=(num1-num2).toString();
                       }else if(op=="*") {
                         r.text=(num1*num2).toString();
                       }else if(op=="/") {
                         if(num2 !=0){
                         r.text=(num1/num2).toString();}
                         else{
                           r.text="لا يمكن القسمة على الصفر";
                         }
                       }else if(op=="%") {
                         r.text=(num1%num2).toString();
                       }


                     }
                     ),


                   ],
                 ),

               ],


             ),
        appBar: myapp(),
    drawer: mydrwar(),
    //])
      ),

    );
  }
  // ignore: non_constant_identifier_names
  Padding MyTextFild1(String txt1, Color c,String txt2,TextEditingController con){
     return Padding(padding: const EdgeInsets.fromLTRB(50,50,50,10),

      child: TextField(
        controller: con,

        decoration: InputDecoration(
         // icon: IconButton.outlined(onPressed: (){r.text=r.text.substring(0,r.text.length-1); }, icon:Icon(Icons.backspace_outlined) ),

            filled: true,
            hintText: txt1,
            labelText: txt2,
            suffixIcon:  Icon(Icons.backspace_outlined,
            color: Colors.red,),

            fillColor:c,
            border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(30),

            ),

        ),

      ));


  }

  Column butn(String tex, fun){

    return    Column(
      children: [

        const Padding(padding: EdgeInsets.all(5)),
        // ignore: avoid_print
        ElevatedButton(onPressed: fun , child: Text(tex) ),
      ],
    );


  }
  

}

