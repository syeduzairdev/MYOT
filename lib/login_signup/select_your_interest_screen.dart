import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/Dashboard_screens/dashboard_screens.dart';
import 'package:myot_app/provider/provider.dart';
import 'package:myot_app/slider_screen.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:provider/provider.dart';

class select_your_interest_screen extends StatelessWidget {
  const select_your_interest_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var active = Provider.of<cartprovider>(context);
    List<String> images = [
      "images/fishing.png",
      "images/touring.png",
      "images/wildlife.png",
      "images/wildlife.png",
      "images/fishing.png",
      "images/touring.png",
      "images/wildlife.png",
      "images/fishing.png",
      "images/fishing.png",
      "images/wildlife.png",
      "images/wildlife.png",
      "images/fishing.png",
    ];
    List<String> text = [
      "fishing",
      "touring",
      "wildlife",
      "winter activity",
      "fishing",
      "touring",
      "wildlife",
      "winteractivity",
      "fishing",
      "touring",
      "wildlife",
      "winteractivity"
    ];
    return Scaffold(
        backgroundColor: apptheme().appbackgroundcolour,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                ),
                Center(
                  child: Text("Select Your Interest",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.all(15),
                    child:
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 80,
                        childAspectRatio: 4 / 6,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            active.actives();
                          },
                          onDoubleTap: () {
                            active.activefalse();
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                images[index],
                                color: active.active ? Colors.green : Colors.grey,
                              ),
                              Text(text[index]),
                            ],
                          ),
                        );
                      },
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 34,
                      width: 110,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        color: Color.fromRGBO(111, 192, 91, 1),
                        child: Center(
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => SideBar()),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 34,
                      width: 110,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        color: Color.fromRGBO(111, 192, 91, 1),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),

                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => SideBar()),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
