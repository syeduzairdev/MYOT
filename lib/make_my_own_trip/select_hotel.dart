import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/details_screen/details_hotels.dart';
import 'package:myot_app/main.dart';
import 'package:myot_app/make_my_own_trip/select_transportation.dart';
import 'package:myot_app/view/recomend_product.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class select_hotel extends StatelessWidget {
  const select_hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
      'images/Places (2).png',
    ];
    return Scaffold(
      backgroundColor: apptheme().appbackgroundcolour,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110), // here the desired height
        child: apptheme()
            .appbar(context, 'TOTAL NO OF DAYS 7', 'TOTAL COAST RS:50,000'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         for (var i = 0; i < 6; i++)
              //           Column(
              //             children: [
              //               Image.asset('images/karachi.png'),
              //               Text('Karachi'),
              //             ],
              //           )
              //       ],
              //     )),
              // SizedBox(
              //   height: 15,
              // ),
              Text(
                'Select Hotel',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height:  5,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>

                            details_hotels()),
                  );
                },
                child: Container(


                  width: 395,
                  height: 244,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/details_hotel.png',
                          fit: BoxFit.cover,
                          height: 140,
                     width: 390,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                     Container(
                       padding: EdgeInsets.only(left: 10,right: 10,bottom: 3),
                       child: Column(
                         children: [
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
                     )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // CarouselSlider(
              //   options: CarouselOptions(
              //
              //     height: 250,
              //     autoPlay: true,
              //     enlargeCenterPage: true,
              //     aspectRatio: 0 /2,
              //     viewportFraction: 10,
              //     scrollDirection: Axis.horizontal,
              //     autoPlayInterval: Duration(seconds: 3),
              //     autoPlayAnimationDuration: Duration(milliseconds: 800),
              //
              //   ),
              //   items: images.map((i) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return   Container(
              //
              //             height: 180.0,
              //
              //             margin: EdgeInsets.symmetric(horizontal: 2.0),
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(25)),
              //             child: Image.asset(
              //               i,
              //               height: 180,
              //               fit: BoxFit.cover,
              //             )
              //         );
              //       },
              //     );
              //   }).toList(),
              // ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),

                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) =>
                        Container(
                          child: Image.asset('images/Places (2).png'),
                        ),
                  )),
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
                      'PROCEED TO THE TRANSPOTAION',
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
                              select_transportation()),
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
                                  select_hotel()),
                        );
                      },
                    ),
                  ),
                ],
              )
             ],
          ),
        ),
      ),
    );

  }
}
