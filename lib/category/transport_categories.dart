import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/details_screen/car_details_screen.dart';
import 'package:myot_app/login_signup/select_your_interest_screen.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class transport_categories extends StatelessWidget {
  const transport_categories({Key? key}) : super(key: key);

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
                        'Recommended Transports',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
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
                                prefixIcon: Icon(Icons.car_repair,color: Colors.black,size: 20,),

                                suffixStyle: TextStyle(color: Colors.black),
                                hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                                // suffixIcon: Icon(
                                //   Icons.check,
                                //   color: Color.fromRGBO(252, 186, 24, 1),
                                // ),
                                prefixStyle: TextStyle(color: Colors.black),
                                hintText:'2',
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
                        'No of car',
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
                      SizedBox(
                        height: 10,
                      ),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 220,
                          childAspectRatio: 3 / 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 8,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext ctx, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      car_details_screen()),
                            );
                          },
                          child: Container(
                              padding:
                                  EdgeInsets.only(left: 5, right: 5, top: 5),
                              width: 172,
                              height: 225,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(children: [
                                Image.asset('images/transpoortcategory.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Corolla White Car',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 12),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 12),
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
                                          color:
                                              Color.fromRGBO(104, 113, 122, 1),
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      button().smallbutton('Book Now', () {}),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '4/5 Passenger',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    104, 113, 122, 1),
                                                fontSize: 8),
                                          ),
                                          Text(
                                            'Rent 8000',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    111, 192, 91, 1),
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ])
                              ])),
                        ),
                      ),

                    ])
            )
        )
    );
  }
}
