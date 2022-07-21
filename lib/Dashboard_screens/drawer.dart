import 'package:flutter/material.dart';
import 'package:myot_app/Dashboard_screens/bookmark_screen.dart';
import 'package:myot_app/Dashboard_screens/coins_screen.dart';
import 'package:myot_app/Dashboard_screens/dashboard_screens.dart';
import 'package:myot_app/Dashboard_screens/hotel_booking_show.dart';
import 'package:myot_app/Dashboard_screens/my_referal_screen.dart';
import 'package:myot_app/Dashboard_screens/notifications_screen.dart';
import 'package:myot_app/Dashboard_screens/profile_setting.dart';
import 'package:myot_app/login_signup/login.dart';
import 'package:myot_app/login_signup/tabbar.dart';
import 'package:myot_app/slider_screen.dart';
import 'package:myot_app/widgets/app_color.dart';
class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: AnimatedContainer(
          padding: EdgeInsets.only(left: 15,right: 15,top: 20),
          duration: new Duration (seconds: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Center(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/profile.png'),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Hello Robert',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 2,),
                          Text('lets start your vocation\nwith us',textAlign:TextAlign.start,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color.fromRGBO(104, 113, 122, 1)),),
                          SizedBox(height:2,),
                          Text('mvc 1234567',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                          Divider(thickness: 0.3,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              apptheme().drwaeritem(() {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SideBar()),
                );
              }, Icons.home, 'Dashboard'),
              SizedBox(
                height: 15,
              ),

              apptheme().drwaeritem(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          notify()),
                );
              }, Icons.notifications, 'Notifications'),
              SizedBox(
                height: 15,
              ),
              apptheme().drwaeritem(() {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          bookmark_screen()),
                );
              }, Icons.bookmark, 'Bookmark'),
              SizedBox(
                height: 15,
              ),
              apptheme().drwaeritem(() {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          my_referal()),
                );
              }, Icons.person_add_alt, 'My Referral'),
              SizedBox(
                height: 15,
              ),
              apptheme().drwaeritem(() {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          hotel_booking_screen()),
                );
              }, Icons.book, 'My Booking'),
              SizedBox(
                height: 15,
              ),
              apptheme().drwaeritem(() {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          profile_screen()),
                );
              }, Icons.settings,'Setting'),
              SizedBox(
                height: 15,
              ),
              apptheme().drwaeritem(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          coins_screen()),
                );
              }, Icons.animation, 'My Coins'),
              SizedBox(
                height: 15,
              ),
              apptheme().drwaeritem(() {
      Widget cancelButton = TextButton(
        child: Text("Cancel",style: TextStyle(color: Colors.black),),
        onPressed: () {
          Navigator.pop(context);
        },
      );


      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Logout"),
        content: Text("Do you want to Logout?"),
        actions: [
          cancelButton,
          // continueButton,
          Container(
            height: 40,
            width: 110,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(15)),
              color: Color.fromRGBO(111, 192, 91, 1),
              child: Text(
                'Logout',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          tabbar()),
                );
              },
            ),
          ),
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    },
               Icons.logout, 'Logout'),

            ],
          ),
        ),
      ) ,
    );
  }
}
