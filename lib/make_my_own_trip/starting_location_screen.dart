import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/login_signup/select_your_interest_screen.dart';
import 'package:myot_app/make_my_own_trip/select_hotel.dart';
import 'package:myot_app/make_my_own_trip/select_last_location.dart';
import 'package:myot_app/make_my_own_trip/select_transportation.dart';
import 'package:myot_app/view/owntrip_controller.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class starting_location_screen extends StatelessWidget {
  const starting_location_screen({Key? key}) : super(key: key);

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
              //   height: 15,
              // ),
              Text(
                'SELECT STARTING LOCATION',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LOCATION',
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
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                            suffixStyle: TextStyle(color: Colors.black),
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                            // suffixIcon: Icon(
                            //   Icons.check,
                            //   color: Color.fromRGBO(252, 186, 24, 1),
                            // ),
                            prefixStyle: TextStyle(color: Colors.black),
                            hintText: 'Karachi',
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
                    height: 15,
                  ),
                  Text(
                    'Starting Date',
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
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(10),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Dec 03, 21',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'PERSON',
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
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(10),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Total Person',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
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
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
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
                                      Icons.remove,
                                      color: Colors.white,
                                    ))),
                              ],
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(10),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.wc,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'No of Days',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
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
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
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
                                      Icons.remove,
                                      color: Colors.white,
                                    ))),
                              ],
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      owntrip().tripperson(Icons.add, Icons.remove, () {},
                          () {}, "1", 'Infants'),
                      owntrip().tripperson(Icons.add, Icons.remove, () {},
                          () {}, "1", 'Children'),
                      owntrip().tripperson(
                          Icons.add, Icons.remove, () {}, () {}, "1", 'Adults'),
                      owntrip().tripperson(Icons.add, Icons.remove, () {},
                          () {}, "1", 'Old Age Person')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: button()
                    .materialbuttons('Skip and select next location,', () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) =>
                            select_last_location()),
                  );
                }),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: button().materialbuttons('Do you want a hotel stay', () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => select_hotel()),
                  );
                }),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child:
                    button().materialbuttons('Do you want transportation', () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) =>
                            select_transportation()),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
