import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/details_screen/car_details_screen.dart';
import 'package:myot_app/make_my_own_trip/payment_option.dart';
import 'package:myot_app/make_my_own_trip/select_hotel.dart';
import 'package:myot_app/make_my_own_trip/select_last_location.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

import 'review_location.dart';


class next_location_transport extends StatelessWidget {
  const next_location_transport({Key? key}) : super(key: key);

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
        child:
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'STEP 3: SELECT TRANSPORTATION',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'NO OF PERSON',
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
                              ' Person',
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
                height: 10,
              ),
              Text(
                'NO OF CARS   ',

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
                              Icons.car_repair,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' Cars',
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
                height: 10,
              ),
              Center(
                child: button().materialbuttons('SEARCH RESULT',(){

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            select_hotel()),
                  );

                }),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:
                const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  childAspectRatio: 5 / 6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
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
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 220,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      color: Color.fromRGBO(111, 192, 91, 1),
                      child: Center(
                        child: Text(
                          ' NEXT LOCATION ',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>
                                  review_location()),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width: 120,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      color: Color.fromRGBO(111, 192, 91, 1),
                      child: Center(
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>
                                  payment_option()),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
      ,
    );
  }
}
