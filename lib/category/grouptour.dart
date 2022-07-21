import 'package:flutter/material.dart';
import 'package:myot_app/details_screen/details_hotels.dart';
import 'package:myot_app/view/recomend_product.dart';
import 'package:myot_app/widgets/app_color.dart';

class grouptour extends StatelessWidget {
  const grouptour({Key? key}) : super(key: key);

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
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         for (var i = 0; i < 6; i++)
                    //           Column(
                    //             children: [
                    //               Image.asset('images/karachi.png'),
                    //               Text('Karachi'),
                    //             ],
                    //           ),
                    //       ],
                    //     )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'MYOT Packages',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                                child: Image.asset('images/grouptourcategorie.png'),
                              ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' Recommended Group Tour',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    for (var i = 0; i < 12; i++)

                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (BuildContext context) =>

                              details_hotels(title:'Sumba Island',)));
                        },
                          child: product().honeymoonpackage(context,'images/honeymonpackage.png','Sumba Island','Sumba Island is an exotic island in the\n eastern part of Indonesia ','Rs. 3.295.000', '4.0')),
                  ],

                ))
        ));
  }
}
