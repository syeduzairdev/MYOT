import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:myot_app/Dashboard_screens/dashboard_screens.dart';
import 'package:myot_app/Dashboard_screens/drawer.dart';
import 'package:myot_app/widgets/app_color.dart';

import 'Dashboard_screens/notifications_screen.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();

    return Scaffold(
      body: SafeArea(
        child: SliderDrawer(
            appBar: SliderAppBar(
                appBarColor: apptheme().appbackgroundcolour,
                trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) => notify()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.notifications),
                    )),
                title: Container(
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                        color: apptheme().appbackgroundcolour,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: TextField(
                      onTap: null,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search...',
                          border: InputBorder.none),
                    )))),
            key: _key,
            sliderOpenSize: 285,
            slider: drawer(),
            child: dashboard_screen()),
      ),
    );
  }
}
