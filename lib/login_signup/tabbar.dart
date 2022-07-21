import 'package:flutter/material.dart';
import 'package:myot_app/login_signup/login.dart';
import 'package:myot_app/login_signup/signup.dart';
import 'package:myot_app/widgets/app_color.dart';


class tabbar extends StatelessWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 250,
              child:  Text(
                'Best Travel Agencie in Karachi.',
                 textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 0,),
            Expanded(
              child: DefaultTabController(

                length: 2,
                child: new Scaffold(
                  backgroundColor: Colors.white,
                  appBar: new PreferredSize(

                    preferredSize:
                    Size.fromHeight(MediaQuery.of(context).size.height),
                    child: new Container(
                      height: 50.0,
                      child:TabBar(
                        indicatorColor: apptheme().appthemecoloue,
                        labelColor: apptheme().appthemecoloue,
                    unselectedLabelColor: const Color(0xffacb3bf),
                    indicatorPadding: EdgeInsets.all(0.0),
                    indicatorWeight: 4.0,
                    labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),

                    tabs: <Widget>[
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Text("Create Account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.center ,
                        color: Colors.white,
                        child:
                        Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                      ),
                    ],
                  ),
                    )
                  ),
                  body: TabBarView(

                    children: [

                      signup_screen( ),
                      login_screen( ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );




  }
}
