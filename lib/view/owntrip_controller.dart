import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class owntrip{
  Widget tripperson(iconplus,iconminus, ontap1, ontap2,value,person) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          person,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height:  5,
        ),
        Container(

          height:30,
          width:80,
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(10),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap:ontap1,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(111, 192, 91, 1),
                    border: Border.all(
                      color: Color.fromRGBO(111, 192, 91, 1),
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Icon(
                    iconminus,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
               value,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap:ontap2,
                child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(111, 192, 91, 1),
                      border: Border.all(
                        color: Color.fromRGBO(111, 192, 91, 1),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                        child: Icon(
                          iconplus,
                          color: Colors.white,
                        ))),
              ),
            ],
          ),
        )

      ],
    );
  }}