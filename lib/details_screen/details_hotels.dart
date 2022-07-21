import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/Dashboard_screens/hotel_booking_show.dart';
import 'package:myot_app/main.dart';
import 'package:myot_app/widgets/button.dart';
import 'package:readmore/readmore.dart';


class details_hotels extends StatelessWidget {
  final title;
  const details_hotels({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/details_hotel.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.access_alarm,
                      color: Color.fromRGBO(104, 113, 122, 1),
                    ),
                    Text(
                      'July 24',
                      style: TextStyle(
                          color: Color.fromRGBO(104, 113, 122, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Color.fromRGBO(104, 113, 122, 1),
                    ),
                    Text(
                      'Karachi',
                      style: TextStyle(
                          color: Color.fromRGBO(104, 113, 122, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                 title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: DefaultTabController(
              length:2,
              child: new Scaffold(
                appBar: new PreferredSize(
                  preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height),
                  child: new Container(
                    height: 50.0,
                    child: new TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Color.fromRGBO(111, 192, 91, 1),
                      onTap: (int) {
                        int++;
                        print(int);
                      },
                      labelColor: Color.fromRGBO(111, 192, 91, 1),
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: 'Description',
                        ),
                        Tab(
                          text: "Tour info",
                        ),

                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              trimLines: 2,
                              colorClickableText: Colors.green,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(104, 113, 122, 1)),
                              moreStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green),
                            ),


                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 40,
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(111, 192, 91, 1),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromRGBO(
                                              104, 113, 122, 1))),
                                  child: Center(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '4.3',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 100,
                                  height: 40,
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromRGBO(
                                              104, 113, 122, 1))),
                                  child: Center(
                                      child: Text(
                                        'Myot Member',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 300,
                              height: 25,
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(154, 168, 182, 1),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color.fromRGBO(154, 168, 182, 1))),
                              child: Center(
                                  child: Text(
                                    '13 people booked this hotel today',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text(
                                  'Date of travel ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Edit',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(111, 192, 91, 1),
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit,
                                      color: Color.fromRGBO(111, 192, 91, 1),
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 370,
                              height: 50,
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(154, 168, 182, 1),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color.fromRGBO(154, 168, 182, 1))),
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Today',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '12:00 AM',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Tomorrow',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '11:00 AM',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                        children: [
                                          Icon(Icons.person,color: Colors.white,   size: 25,),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '1 Car',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                '3 Guest',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Total amount',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color.fromRGBO(104, 113, 122, 1),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rs 1375 Rs 2618',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                button().smallbutton('Book now',(){
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (BuildContext context) => hotel_booking_screen()),
                                  );

                                }),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),

                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
