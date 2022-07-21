import 'package:flutter/material.dart';
import 'package:myot_app/details_screen/details_hotels.dart';
import 'package:myot_app/main.dart';
import 'package:myot_app/widgets/app_color.dart';


class tranportation extends StatelessWidget {
  const tranportation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apptheme().appbackgroundcolour,

      body: Container(
        padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transportation',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>

                          details_hotels()),
                );
              },
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 245,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/car_details.dart.png',
                          width: 388,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Toyota',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Center(
                            child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 0.08),
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                child: Center(
                                  child:  Text('\$1,459'),
                                )
                            ),
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

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
