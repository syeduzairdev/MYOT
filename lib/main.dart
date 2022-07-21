import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/Dashboard_screens/dashboard_screens.dart';
import 'package:myot_app/login_signup/tabbar.dart';
import 'package:myot_app/provider/provider.dart';
import 'package:myot_app/slider_screen.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(ChangeNotifierProvider<cartprovider>(
      create: (_) => cartprovider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

       backgroundColor: apptheme().appbackgroundcolour,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.


      ),
      home: splash_screen(),
    );
  }
}
class splash_screen extends StatelessWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
       pageRouteTransition: PageRouteTransition.SlideTransition,
        navigateRoute: start_screen(),
        duration: 7000,
        imageSize: 500,
        imageSrc: "images/Comp-1.gif",

        // text: "MYOT",

        textStyle: TextStyle(
          fontSize: 30.0,
          color: Colors.black
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class start_screen extends StatelessWidget {
  const start_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(


            image: DecorationImage(
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken    ),

              image: AssetImage(
                  'images/started_cover.png',
                ),
                fit: BoxFit.cover,

            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            SizedBox(height: 15,),
            Text(
              'welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15,),
            Text(
              'A new way to travel with the best\n agency of the world.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 15,),
            button(). newbutton('Get Started' , (){
              Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        tabbar()),
              );

            } ),
            SizedBox(height: 15,),
            button().materialbuttons('GUEST',(){
              Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        SideBar()),
              );

            } ),
            SizedBox(height: 15,),
            Text(
              'By logging in or registering,you have agreed to the\nTerms and Conditions and Privacy Policy.',
              textAlign: TextAlign.center,
              style: TextStyle(

                  color: Colors.white70,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
