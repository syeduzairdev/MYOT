import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:myot_app/category/grouptour.dart';
import 'package:myot_app/category/hoteldetails.dart';
import 'package:myot_app/category/myotpackages.dart';
import 'package:myot_app/category/transport_categories.dart';
import 'package:myot_app/details_screen/details_hotels.dart';
import 'package:myot_app/make_my_own_trip/starting_location_screen.dart';
import 'package:myot_app/view/recomend_product.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:page_transition/page_transition.dart';

import 'drawer.dart';

class dashboard_screen extends StatelessWidget {
  const dashboard_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: apptheme().appbackgroundcolour,
        // appBar: AppBar(
        //     iconTheme: IconThemeData(color: Colors.black),
        //   backgroundColor: apptheme().appbackgroundcolour,
        //   leadingWidth: 70,
        //   elevation: 0.0,
        //
        //   actions: [
        //     Padding(
        //       padding: EdgeInsets.all(12.0),
        //       child: Icon(
        //         Icons.notifications,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ],
        // ),
        // drawer: AnimatedContainer(
        //     duration: new Duration (seconds: 10),
        //
        //     child: drawer()),
        body: SingleChildScrollView(


          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1100,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/B.g (1).jpg'),
              fit: BoxFit.cover,
            )),
            padding: EdgeInsets.only(left: 10, right: 5, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Robert',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Let’s start your vacation with us!',
                  style: TextStyle(
                      color: Color.fromRGBO(104, 113, 122, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    height: 49,
                    width: 328,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(111, 192, 91, 1),
                      child: Text(
                        'Make your own Trip',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>
                                  starting_location_screen()),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    hotel_categories()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset('images/hotel.png', height: 60),
                              Text('Hotel/Accommodation'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    transport_categories()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset('images/transport.png', height: 60),
                              Text('Transportation'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    myot_packages()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset(
                                'images/packages.png',
                                height: 60,
                              ),
                              Text('Packages'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => grouptour()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset(
                                'images/grouptour.png',
                                height: 60,
                              ),
                              Text('Grouptour'),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Recommended',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (BuildContext context) =>
                                          details_hotels(
                                            title: 'Kudahuvadhoo Island',
                                          )));
                            },
                            child: product().Recommentproduct(
                                'images/kudaisland.png',
                                'Kudahuvadhoo Island',
                                'Maldives',
                                '\$1,459'),
                          )),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Honeymoon Package',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (BuildContext context) =>
                                          details_hotels(
                                            title: 'Kudahuvadhoo Island',
                                          )));
                            },
                            child: product().honeymoonpackage(
                                context,
                                'images/honeymonpackage.png',
                                'Sumba Island',
                                'Sumba Island is an exotic island in the\n eastern part of Indonesia ',
                                'Rs. 3.295.000',
                                '4.0'),
                          )),
                ),
                Text(
                  'Group tour',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      details_hotels(
                                        title: 'Kudahuvadhoo Island',
                                      )));
                        },
                        child: product().Recommentproduct(
                            'images/kudaisland.png',
                            'Kudahuvadhoo Island',
                            'Maldives',
                            '\$1,459'),
                      )),
                ),
                Text(
                  'Upcoming events',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      details_hotels(
                                        title: 'Kudahuvadhoo Island',
                                      )));
                        },
                        child: product().Recommentproduct(
                            'images/kudaisland.png',
                            'Kudahuvadhoo Island',
                            'Maldives',
                            '\$1,459'),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}

class MyApp1 extends StatefulWidget {
  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Home";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SliderDrawer(
            slideDirection: SlideDirection.RIGHT_TO_LEFT,
            isDraggable: true,
            animationDuration: 2000,
            appBar: SliderAppBar(
                appBarColor: Colors.white,
                title: Text(title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700))),
            key: _key,
            sliderOpenSize: 179,
            slider: drawer(),
            child: dashboard_screen()),
      ),
    );
  }
}
