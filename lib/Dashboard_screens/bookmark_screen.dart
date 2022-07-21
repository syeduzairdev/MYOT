import 'package:flutter/material.dart';
import 'package:myot_app/Dashboard_screens/hotels_bookmark.dart';
import 'package:myot_app/Dashboard_screens/tranportation.dart';
import 'package:myot_app/Dashboard_screens/transportation.dart';
import 'package:myot_app/widgets/app_color.dart';

import 'dashboard_screens.dart';

class bookmark_screen extends StatelessWidget {
  const bookmark_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0.0,
              backgroundColor: apptheme().appbackgroundcolour,

              iconTheme: IconThemeData(color: Colors.red),

              bottom: TabBar(
                  unselectedLabelColor: Color.fromRGBO(151, 151, 151, 1),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [apptheme().appthemecoloue, apptheme().appthemecoloue]),
                      borderRadius: BorderRadius.circular(50),
                      color: apptheme().appthemecoloue),
                  tabs: [
                    Tab(
                      child: Text("Hotels", style: TextStyle(fontSize: 10)),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Transportation",
                            style: TextStyle(fontSize: 10)),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Packages",
                            style: TextStyle(fontSize: 10)),
                      ),
                    ),

                  ]
              )

          ),
        body: TabBarView(


            children: [
              hotel_bookmark(),
              tranportation(),
              packages(),

            ]),
      ),
    );
  }
}
