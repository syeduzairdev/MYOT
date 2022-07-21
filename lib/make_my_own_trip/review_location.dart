import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/login_signup/select_your_interest_screen.dart';
import 'package:myot_app/make_my_own_trip/payment_option.dart';
import 'package:myot_app/make_my_own_trip/select_last_location.dart';
import 'package:myot_app/make_my_own_trip/starting_location_screen.dart';
import 'package:myot_app/view/modal.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class review_location extends StatelessWidget {
  const review_location({Key? key}) : super(key: key);

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
          padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 15),
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
              SizedBox(
                height: 15,
              ),
              Text(
                ' Review All Locations',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button().screensbutton('Basic Detail',(){

                    modal().reject_order(context,' Basic Detail', 'Full Name','Shabir','Last Name','Anwar Sheikh','Total People','5 Person','Email','Shabirahmed@gmail.com','Price','198980');



                  }),
                  button().screensbutton('Transportation',(){

                    modal().reject_order(context,'Transportation Detail', 'Car Name','Shabir','Last Name','Anwar Sheikh','Total People','5 Person','Email','Shabirahmed@gmail.com','Price','198980');


                  }),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(child: Image.asset('images/Places (4).png',fit: BoxFit.cover,)),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 15,top: 10),
                height: 150,
               width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/unsplash_JqhVgs4WANQ (3).png',),

                  ),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      starting_location_screen()),
                            );
                          },
                            child: Icon(Icons.edit,color: Colors.white,)),
                        button().smallbutton(' Details', (){
                          modal().reject_order(context,' Basic Detail', 'Full Name','Shabir','Last Name','Anwar Sheikh','Total People','5 Person','Email','Shabirahmed@gmail.com','Price','198980');
                        }),
                      ],
                    ),
                    Align(
                        alignment:Alignment.topLeft,
                        child: Text('Lahore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 15,top: 10),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/karachilocation.png',),

                  ),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap:(){
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        select_last_location()),
                              );
                            },
                            child: Icon(Icons.edit,color: Colors.white,)),
                        button().smallbutton(' Details', (){
                          modal().reject_order(context,' Basic Detail', 'Full Name','Shabir','Last Name','Anwar Sheikh','Total People','5 Person','Email','Shabirahmed@gmail.com','Price','198980');
                        }),
                      ],
                    ),

                    Align(
                        alignment:Alignment.topLeft,
                        child: Text('Karachi',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),))
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: button().screensbutton('Pay now',(){

                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) =>
                            payment_option()),
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
