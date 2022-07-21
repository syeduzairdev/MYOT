import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/details_screen/details_hotels.dart';
import 'package:myot_app/login_signup/select_your_interest_screen.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class hotel_categories extends StatelessWidget {
  const hotel_categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apptheme().appbackgroundcolour,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110), // here the desired height
        child: apptheme()
            .appbar(context, 'TOTAL NO OF DAYS 7', 'TOTAL COAST RS:50,000'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //     child: Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     for (var i = 0; i < 6; i++)
              //       Column(
              //         children: [
              //           Image.asset('images/karachi.png'),
              //           Text('Karachi'),
              //         ],
              //       )
              //   ],
              // )),
              // SizedBox(
              //   height: 10,
              // ),
              Text(
                'Recommended Hotels',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Check-in Date',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 45,
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
                        prefixIcon: Icon(Icons.calendar_today,color: Colors.black,size: 20,),

                        suffixStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                        // suffixIcon: Icon(
                        //   Icons.check,
                        //   color: Color.fromRGBO(252, 186, 24, 1),
                        // ),
                        prefixStyle: TextStyle(color: Colors.black),
                        hintText:'3-2-2022',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Check-out Date',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 45,
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
                        prefixIcon: Icon(Icons.calendar_today,color: Colors.black,size: 20,),

                        suffixStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                        // suffixIcon: Icon(
                        //   Icons.check,
                        //   color: Color.fromRGBO(252, 186, 24, 1),
                        // ),
                        prefixStyle: TextStyle(color: Colors.black),
                        hintText:'3-2-2022',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
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
              SizedBox(
                height: 10,
              ),
              Text(
                'No of Persons',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 45,
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
                        prefixIcon: Icon(Icons.person,color: Colors.black,size: 20,),

                        suffixStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                        // suffixIcon: Icon(
                        //   Icons.check,
                        //   color: Color.fromRGBO(252, 186, 24, 1),
                        // ),
                        prefixStyle: TextStyle(color: Colors.black),
                        hintText:'2 Adults - 0 Children - 1 Room',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
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
              SizedBox(
                height: 10,
              ),
              Center(
                child: button().materialbuttons('SEARCH RESULT',(){



                }),
              ),
              SizedBox(
                height: 10,
              ),
              for (var i = 0; i < 6; i++)
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>

                              details_hotels(title: 'hotel one jinnah',)),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.only(left: 5, right: 5),
                    width: MediaQuery.of(context).size.width,
                    height: 244,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/hotel_category.png',
                          width: 388,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Hotel one Jinnah 1-9 Karachi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add_location_rounded,
                              color: Colors.red,
                            ),
                            Text(
                              'Karachi',
                              style: TextStyle(
                                  color: Color.fromRGBO(104, 113, 122, 1),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            button().smallbutton('Book Now', () {}),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1 night,1 adult',
                                  style: TextStyle(
                                      color: Color.fromRGBO(104, 113, 122, 1),
                                      fontSize: 12),
                                ),
                                Text(
                                  'Rs 10,500',
                                  style: TextStyle(
                                      color: Color.fromRGBO(111, 192, 91, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'inclusive of all taxes',
                                  style: TextStyle(
                                      color: Color.fromRGBO(104, 113, 122, 1),
                                      fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
