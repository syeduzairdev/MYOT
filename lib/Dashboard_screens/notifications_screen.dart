 import 'package:flutter/material.dart';



 class notify extends StatelessWidget {
   const notify({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
         child: Container(
           padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),

           child: Column(

             children: [
               SizedBox(height: 15,),
               Text(
                 'Notifications',
                 style: TextStyle(
                     color: Colors.black,
                     fontSize: 16,
                     fontWeight: FontWeight.bold),
               ),
               SizedBox(height: 15,),
               ListTile(

                 leading: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Your password has been\n successfully changed.',

                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 12,
                           fontWeight: FontWeight.bold),
                     ),
                     SizedBox(height: 5,),
                     Text(
                       '104, 113, 122, 1',
                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 12,
                           fontWeight: FontWeight.w400),
                     ),

                   ],
                 ),

                 trailing: Image.asset('images/Ellipse 176 (1).png'),
               ),
               SizedBox(height: 15,),
               ListTile(

                 leading: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Your password has been\n successfully changed.',

                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 12,
                           fontWeight: FontWeight.bold),
                     ),
                     SizedBox(height: 5,),
                     Text(
                       '104, 113, 122, 1',
                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 12,
                           fontWeight: FontWeight.w400),
                     ),

                   ],
                 ),

                 trailing: Image.asset('images/Ellipse 176 (1).png'),
               ),
               SizedBox(height: 15,),
               ListTile(

                 leading: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Your password has been\n successfully changed.',

                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 12,
                           fontWeight: FontWeight.bold),
                     ),
                     SizedBox(height: 5,),
                     Text(
                       '104, 113, 122, 1',
                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 12,
                           fontWeight: FontWeight.w400),
                     ),

                   ],
                 ),

                 trailing: Image.asset('images/Ellipse 176 (1).png'),
               )
             ],
           ),
         ),
       ),
     );
   }
 }
