import 'package:flutter/material.dart';



class coins_screen extends StatelessWidget {
  const coins_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Coins',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Text(
                'Guaranteed  referred are waiting! scratch to reveal',

                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5,),
              Text(
                'Claim  your Prize Now',

                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5,),
              Container(
                  width: 110,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(111, 192, 91, 1),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(Icons.star,color: Colors.white,),
                      Text('300 points',style: TextStyle(
                        color: Colors.white,
                      ),),

                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
