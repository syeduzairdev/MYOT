import 'package:flutter/material.dart';


class my_referal extends StatelessWidget {
  const my_referal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),

        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('images/4 1.png')),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                '0375D',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Your Invites',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                   'Mohib Ahmed',

              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),


                ),
                Text(
                  'July 25',

                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),


                ),
                Center(
                  child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(111, 192, 91, 1),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child:  Text('10 Coins',style: TextStyle(
                          color: Colors.white
                        ),),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mohib Ahmed',

                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),


                ),
                Text(
                  'July 25',

                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),


                ),
                Center(
                  child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(111, 192, 91, 1),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child:  Text('10 Coins',style: TextStyle(
                            color: Colors.white
                        ),),
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
