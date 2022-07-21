import 'package:flutter/material.dart';
import 'package:myot_app/widgets/app_color.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apptheme().appbackgroundcolour,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Edit Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Card(
                    elevation: 4.4,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 15, top: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 590,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 55,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/profile.png'),
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                labelText: 'User Name',
                                hintText: 'User Name'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                labelText: 'Email',
                                hintText: 'Email'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                labelText: 'Phone',
                                hintText: 'Phone'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                labelText: 'Gender',
                                hintText: 'Gender'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                labelText: 'Date Of Birth',
                                hintText: 'Date Of Birth'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                labelText: 'Interest',
                                hintText: 'Interest'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
