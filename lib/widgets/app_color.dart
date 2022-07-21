
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/Dashboard_screens/notifications_screen.dart';

class apptheme{
  var appthemecoloue =  Color.fromRGBO(111, 192, 91, 1);
  var appbackgroundcolour =  Color.fromRGBO(236, 236, 236,1);


  Widget textfield(BuildContext context,hinttext,heading){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
        SizedBox(height: 5,),
        Center(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(10),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  suffixStyle: TextStyle(color: Colors.grey),
                  // suffixIcon: Icon(
                  //   Icons.check,
                  //   color: Color.fromRGBO(252, 186, 24, 1),
                  // ),
                  prefixStyle: TextStyle(color: Colors.grey),
                  hintText: hinttext,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color:  Color.fromRGBO(242, 242, 242, 1),
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color:  Color.fromRGBO(242, 242, 242, 1),
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red))),
            ),
          ),
        ),
      ],
    );
  }
  Widget appbar(BuildContext context,days,price){
    return SafeArea(
      child: AppBar(

        leadingWidth:35,
        backgroundColor: Color.fromRGBO(111, 192, 91, 1),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>

                              notify()));
                },
                child: Icon( Icons.notifications)),
          ),
        ],
        leading:InkWell(
          onTap: ()=>Navigator.of(context).pop() ,
            child: Icon(  Icons.arrow_back_ios)),
        title: Center(
          child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: TextField(

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintStyle: new TextStyle(color: Colors.black38),
                ),
              )),
        ),
        flexibleSpace: Align(
          alignment: Alignment. bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(days, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),),

                Text(price, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),),

              ],
            ),
          ),
        ),
      ),

    );

  }
  Widget drwaeritem(VoidCallback ontap,icon,name){
    return   InkWell(
        onTap: ontap ,
        child: Column(
          children:[
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
            icon,
            color: Color.fromRGBO(111, 192, 91, 1)
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(111, 192, 91, 1),
          ),
        ),
      ],
    ),
            Divider(thickness: 0.3,),
          ]

        ),

    );
  }
}